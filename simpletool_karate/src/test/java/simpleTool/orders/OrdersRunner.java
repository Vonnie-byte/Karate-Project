package simpleTool.orders;

import com.intuit.karate.junit5.Karate;


class OrdersRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("singleOrder").relativeTo(getClass());
    }

}
