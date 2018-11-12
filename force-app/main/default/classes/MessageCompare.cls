public class MessageCompare{
    public static void compare(String xml1, String xml2){
         Dom.Document docx = new Dom.Document();
         docx.load(xml1);

         Dom.XmlNode xroot = docx.getrootelement() ;
         String ns = xroot.getNamespace();     
         Dom.XmlNode[] nodes = xroot.getChildElements();     
    }
    
    private static String traverse(DOM.XMLNode node){
        if(node.getNodeType() == DOM.XMLNodeType.ELEMENT) {
            for (Dom.XMLNode child: node.getChildElements()) {               
                traverse(child);
            }
            return ''; 
        }
        return '';        
    }
    
}