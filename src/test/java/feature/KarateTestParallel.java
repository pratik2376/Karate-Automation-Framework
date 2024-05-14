package feature;

import static org.junit.jupiter.api.Assertions.assertTrue;

import java.beans.Transient;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;

import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import com.intuit.karate.Runner;



public class KarateTestParallel {

    private static Results results;
    private final int THREAD_COUNT =5;

    @Test
    void KarateTestParallel()
{
    results=Runner.path("classpath:feature").tags("~@ignore").outputCucumberJson(true).parallel(THREAD_COUNT);
    generateReport(results.getReportDir());
}

@AfterAll
public static void buildStatus()
{
   assertTrue(results.getFailCount()==0);
}

public static void generateReport(String karateOutputPath){
    Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
    List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
    jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
   Configuration config = new Configuration(new File("target"),"Karate Demo");
    ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
    reportBuilder.generateReports();
}
}