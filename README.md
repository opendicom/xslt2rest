# xslt2rest
The xslt2.html webpage returns the result of a transformation xslt2 with params.

The transform xsl, source xml and params are defined in the invocation URI. 

The response page contains a javascript saxonce 1.1 which performs the transformation client-side.

##invocation from any javascript enabled web browser

- xsl.html?xsl={transformXsl}&xml={sourceXml}
- &{param1}={valor1} may be appended for one or more parameters

##replace in the lines above...
- {transformXsl} by the URI of the transform xslt
- {sourceXml} by the URI of the xml source
- {param1} by the name of the parameter
- {value1} by the value of the parameter

##example with param and xslt2 function tokenize()
- put the complete folder in a web server
- invoke the transformation from a web browser with URI:

xslt2.html?xsl=transform.xsl&xml=source.xml&exclude=b

The URI can also be called from inside a web page. In this case, replace & by &amp;
