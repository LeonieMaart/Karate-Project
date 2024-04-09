package DOGs.votes;

import com.intuit.karate.junit5.Karate;

class voteRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("deleteId.feature").relativeTo(getClass());
    }

}