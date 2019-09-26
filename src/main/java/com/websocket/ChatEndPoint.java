package com.websocket;

import java.io.IOException;
import java.util.HashMap;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

import javax.websocket.EncodeException;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import com.websocket.model.Message;

@ServerEndpoint(value = "/chat/{username}/{userid}", decoders = MessageDecoder.class, encoders = MessageEncoder.class)
public class ChatEndPoint {

	private Session session;
	private static Set<ChatEndPoint> chatEndpoints = new CopyOnWriteArraySet<>();
	private static HashMap<String, String> users = new HashMap<>();
	
	@OnOpen
	public void onOpen(Session session, @PathParam("username") String username,@PathParam("userid") Integer userid) throws IOException {

		this.session = session;
		chatEndpoints.add(this);
		users.put(session.getId(), username);
		users.put(username,userid.toString());
		Message message = new Message();
		message.setFrom(username);
		message.setFrom_id(userid);
		message.setSystem_msg(((int)(Math.random()*9000)+1000)+"顆喬丹之石賣給商人");
		broadcast(message);
		message.setSystem_msg(message.getFrom()+" 出現在地表上!!!");
		broadcast(message);
	}

	@OnMessage
	public void onMessage(Session session, Message message) throws IOException {
		message.setFrom(users.get(session.getId()));
		message.setFrom_id(Integer.parseInt(users.get(users.get(session.getId()))));
		broadcast(message);
	}

	@OnClose
	public void onClose(Session session) throws IOException {

		chatEndpoints.remove(this);
		Message message = new Message();
		message.setFrom(users.get(session.getId()));
		message.setSystem_msg(message.getFrom()+"離開了這個世界，暗黑破壞神的嘍喽們的力量被削弱了!");
		broadcast(message);
	}

	@OnError
	public void onError(Session session, Throwable throwable) {
		// Do error handling here
	}

	private static void broadcast(Message message) {

		chatEndpoints.forEach(endpoint -> {
			synchronized (endpoint) {
				try {
					endpoint.session.getBasicRemote().sendObject(message);
				} catch (IOException | EncodeException e) {
					e.printStackTrace();
				}
			}
		});
	}

}
