JRE := -bootclasspath /usr/lib/jvm/jre-1.7.0/lib/rt.jar

all: team

team: 
	@echo "Team: survive the semester"
	@echo ""
	@echo "ZhenXun Yuan"
	@echo "yuanzhenxun"
	@echo ""
	@echo "JiaQi Yang"
	@echo "Jqyang3108"

compiler:
#	export CLASSPATH=./step2/bin/antlr-4.7.1-complete.jar:.
#	JRE := -bootclasspath /usr/lib/jvm/jre-1.7.0/lib/rt.jar
	mkdir -p step2/classes
	mkdir -p step2/generated
	java -cp ${CLASSPATH} org.antlr.v4.Tool -o step2/generated step2/Micro.g4
	javac -source 1.7 -target 1.7 -cp $(CLASSPATH) -d step2/classes step2/src/*.java step2/generated/step2/*.java

clean:
	rm -rf step2/classes
	rm -rf step2/generated
