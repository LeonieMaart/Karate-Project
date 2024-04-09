package DOGs.allFeatures;

import com.intuit.karate.junit5.Karate;

class BreedRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("get_Breed_id").relativeTo(getClass());
    }

}