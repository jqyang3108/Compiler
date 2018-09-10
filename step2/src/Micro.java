import org.antlr.v4.runtime.*;

public class Micro {
	public static void main(String[] args) throws Exception
	{
		MicroLexer lexer= new MicroLexer(new ANTLRFileStream(args[0])); 	
                CommonTokenStream tokens= new CommonTokenStream(lexer);
                MicroParser par = new MicroParser(tokens);
                ANTLRErrorStrategy eh = new NewErrorStrategy();
                par.setErrorHandler(eh);
                try{
                     par.program();
                     System.out.println("Accepted");         
                    
                }catch(Exception wronggram){
                     System.out.println("Not Accepted"); 
                } 
                			
	}
 
        class NewErrorStrategy extends DefaultErrorStrategy{

           public void reportError(Parser recognizer, RecognitionException wronggram){
                throw wronggram;                     
          }       
        }  
	
	
}
