package apis;

import com.intuit.karate.junit5.Karate;

public class TestRunner {

	@Karate.Test
	Karate test() {
		return Karate.run("getApi").tags("tag2").relativeTo(getClass());
	}
}
