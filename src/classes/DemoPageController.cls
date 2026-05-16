public class DemoPageController {
    public String sampleText { get; set; }  // This creates getter and setter automatically

    public DemoPageController() {
        sampleText = ''; // Initialize if needed
    }

    public void saveText() {
        System.debug('User entered: ' + sampleText);
    }
}