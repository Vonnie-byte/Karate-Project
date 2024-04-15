package TheDogApi.Breeds;

import com.intuit.karate.junit5.Karate;


class BreedsRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("getBreedById").relativeTo(getClass());
    }

}
