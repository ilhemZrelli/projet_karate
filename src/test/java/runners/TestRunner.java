package runners;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Test;

import static org.junit.Assert.assertTrue;

public class TestRunner {
    @Test
    public void testParallel(){
        Results results= Runner.path("classpath:features").tags("nontag").parallel(1);
        assertTrue(results.getFailCount()==0);
    }

}
