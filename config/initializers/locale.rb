# module I18n
#   class JustRaiseExceptionHandler < ExceptionHandler
#     def call(exception, locale, key, options)
#       if exception.is_a?(MissingTranslationData)
#         key
#       else
#         super
#       end
#     end
#   end
# end

# I18n.exception_handler = I18n::JustRaiseExceptionHandler.new
Rails.application.config.i18n.default_locale = :pl
Rails.application.config.i18n.fallbacks = [:en]
