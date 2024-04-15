package TheDogApi.Votes;

import com.intuit.karate.junit5.Karate;


class VotesRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("postVotes").relativeTo(getClass());
    }

}
