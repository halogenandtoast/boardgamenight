def role(selector)
  data_attr("role", selector)
end

def value(selector)
  data_attr("value", selector)
end

def data_attr(prefix, selector)
  find("[data-#{prefix}='#{selector}']")
end
