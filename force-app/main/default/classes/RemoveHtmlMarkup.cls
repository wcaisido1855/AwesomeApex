public class RemoveHtmlMarkup{

/* 
Invocable Method used along with a Flow to strip HTML Markup from Rich Text Fields
Used when taking the first 255 Characters from a Rich Text Field and spitting them into 
a text (255) field so Users can see a preview of the description in a list view
*/

    @InvocableMethod()
    public static List<String> stripHtmlTags(List<String> richText) {
        List<String> textContent  = new List<String>(); 
        for (string s : richText) {
            textContent.add(s.stripHtmlTags());
        }
        return textContent;
    }
}