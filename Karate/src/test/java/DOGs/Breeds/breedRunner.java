package DOGs.Breeds;

import com.intuit.karate.junit5.Karate;

class breedRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("CreateVote.feature").relativeTo(getClass());
    }    

}
