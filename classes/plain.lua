
plain = SILE.baseClass { id = "plain" }

plain:declareFrame("a",     {left = "5%",  right = "95%",  top = "5%",  bottom = "90%" });
plain:declareFrame("folio", {left = "5%",  right = "95%",  top = "92%", bottom = "97%" });

plain.pageTemplate.firstContentFrame = plain.pageTemplate.frames["a"];
plain:loadPackage("folio");

plain.newPage = function(self)
  plain:outputFolio()
  return SILE.baseClass.newPage(self);
end

return plain;