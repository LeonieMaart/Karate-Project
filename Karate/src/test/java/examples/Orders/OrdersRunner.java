package examples.Orders;

import com.intuit.karate.junit5.Karate;

class OrdersRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("GetSingleOrder").relativeTo(getClass());
    }

}
