module TeobitMailer
  module MailerHelper
    def mailer_wrapper(&block)
      raw <<-EOS
        <html lang="ru">
        <head>
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
        </head>
        <body>
        <table style="border-collapse: collapse; color: #333; width: 100%; font-style: normal; font-variant: normal; font-weight: normal; font-size: 14px; line-height: 25px; font-family: arial; background-image: url(http://web.teobit.ru/bg.jpg); background-repeat: repeat; padding: 0; border: 0;">
        <tbody>
        <tr>
        <td style="vertical-align: top; padding: 35px 20px 5px;">
        <table style="border-collapse: collapse; color: #333; width: 80%; border-top-color: #99cc33; border-top-style: solid; font-style: normal; font-variant: normal; font-weight: normal; font-size: 14px; line-height: 25px; font-family: arial; margin: 0 auto; padding: 0; border-width: 5px 0 0;">
        <thead style="background-color: #fff;"><tr><td style="vertical-align: top; height: 36px; padding: 0;"></td></tr></thead>
        <tfoot>
        <tr>
        <td style="vertical-align: top; border-top-width: 5px; border-top-color: #3399cc; border-top-style: solid; padding: 15px 7%;">
        <a href="//web.teobit.ru/" style="background-repeat: no-repeat; background-image: url(http://web.teobit.ru/logo.png); padding-left: 30px; color: #333;"> ТеоБит</a>
        </td>
        </tr>
        </tfoot>
        <tbody style="background-color: #fff;">
        <tr>
        <td style="vertical-align: top; padding: 0 7%;">
        #{capture(&block)}
        </td>
        </tr>
        </tbody>
        </table>
        </td>
        </tr>
        </tbody>
        </table>
        </body>
        </html>
      EOS
    end

    def key_value(&block)
      raw <<-EOS
        <table style="border-collapse: collapse; color: #333; width: 100%; margin-bottom: 25px; font-style: normal; font-variant: normal; font-weight: normal; font-size: 14px; line-height: 25px; font-family: arial; padding: 0; border: 0;">
        <tbody>
        #{capture(&block)}
        </tbody>
        </table>
      EOS
    end

    def key(k)
      raw <<-EOS
        <tr>
        <td style="vertical-align: top; color: #999; min-width: 150px; width: 20%; padding: 5px 5px 5px 0;">#{k}</td>
        </tr>
      EOS
    end

    def value(v)
      raw <<-EOS
        <tr>
        <td style="vertical-align: top; padding: 5px 0;">#{Sanitize.clean(v)}</td>
        </tr>
      EOS
    end
  end
end
