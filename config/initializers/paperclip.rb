
#require 'paperclip'

require 'aws/s3'



#Paperclip::Attachment.interpolations[:organisation] = proc do |attachment, style|
#  
#  RAILS_DEFAULT_LOGGER.debug attachment.instance.inspect
#  RAILS_DEFAULT_LOGGER.debug attachment.instance.attachable.inspect
#  
#  if attachment.instance.attachable && attachment.instance.attachable.is_entity?
#    #RAILS_DEFAULT_logger.debug "**************** in the normal attachment routine"
#    attachment.instance.attachable.project.organisation.subdomain.downcase 
#  else
#    #RAILS_DEFAULTlogger.debugo "**************** lib #{attachment.instance.organisation.subdomain.downcase}"
#    attachment.instance.organisation.subdomain.downcase
#    #'general'
#  end
#end