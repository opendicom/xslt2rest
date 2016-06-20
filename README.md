# xslt2rest
html page which returns the result of a xslt2 transformation with params, thanks to saxonce 1.1. The transformation is performed on the client-side from the javascript engine of the client.

##invocation from any javascript enabled web browser

xsl.html?xsl={transformXsl}&amp;xml={sourceXml}&amp;{param1}={value1}

&amp;{param1}={valor1} is optional and may be repeated for other params

Reemplazar

{transformXsl} x URI of the transform
{sourceXml} x URI of the xml source
{param1} x the name of the parameter
{value1} x the value of the parameter

##example with param and xslt2 function tokenize()
- put the complete folder in a web server
- invoke the transformation from a web browser with URI:
xslt2.html?xsl=transform.xsl&xml=source.xml&exclude=b

The URI can also be called from inside a web page. In this case, replace & by &amp;
