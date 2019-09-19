package _00_init.util;

import java.io.IOException;

import org.apache.commons.codec.binary.Base64;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class HttpPostUtils {
	public static JsonObject accessToken(String code) throws IOException {

		Response response = new OkHttpClient().newCall(new Request.Builder()
				.url("https://api.line.me/oauth2/v2.1/token")
				.post(RequestBody.create("grant_type=authorization_code&code=" + code
						+ "&redirect_uri=http%3A%2F%2Flocalhost%3A8080%2FKarpyShopping%2FlineVerify&client_id=1623038570&client_secret=5208b0d5022fab47d445be7c1240dc86",
						MediaType.parse("application/x-www-form-urlencoded")))
				.addHeader("Content-Type", "application/x-www-form-urlencoded").addHeader("Cache-Control", "no-cache")
				.addHeader("Host", "api.line.me").addHeader("Accept-Encoding", "gzip, deflate")
				.addHeader("Content-Length", "195").addHeader("Connection", "keep-alive")
				.addHeader("cache-control", "no-cache").build()).execute();

		try {
			String json = response.body().string();
			JsonObject jsonObject = new JsonParser().parse(json).getAsJsonObject();
			String jwtToken = jsonObject.get("id_token").getAsString();
			String[] split_string = jwtToken.split("\\.");
			String base64EncodedBody = split_string[1];
			Base64 base64Url = new Base64(true);
			return new JsonParser().parse(new String(base64Url.decode(base64EncodedBody))).getAsJsonObject();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
