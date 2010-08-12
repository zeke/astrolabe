module ApplicationHelper

  def enable_typekit(kit_id)
    "<script type=\"text/javascript\" src=\"http://use.typekit.com/#{kit_id}.js\"></script>
    <script type=\"text/javascript\">try{Typekit.load();}catch(e){}</script>"
  end
  
end
