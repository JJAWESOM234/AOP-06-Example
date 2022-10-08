
public aspect TraceAspectMcFarland {

		pointcut classToTrace(): within(ComponentApp) || within(DataApp) || within(ServiceApp);

		before(): classToTrace() && execution(String getName()){
			System.out.println("[BEG]: " + thisJoinPointStaticPart.getSignature() + ", " + thisJoinPointStaticPart.getSourceLocation().getLine());
		}
		
		after(): classToTrace() && execution(String getName()){
			System.out.println("[END] " + thisJoinPointStaticPart.getSourceLocation().getFileName());
		}
		
}
	