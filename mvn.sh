CG_JSON_FILE="/Users/anurag/java-agent-test/jhttp/cg/coverage*.json"

JAVA_AGENT="/Users/anurag/java-agent-test/java-agent.jar"
CONFIG_FILE="/Users/anurag/java-agent-test/config.ini"


export MAVEN_OPTS="-javaagent:$JAVA_AGENT=$CONFIG_FILE"
mvn clean test -DargLine="-javaagent:$JAVA_AGENT=$CONFIG_FILE"

echo "Content of file: $CG_JSON_FILE"
wc -l $CG_JSON_FILE
