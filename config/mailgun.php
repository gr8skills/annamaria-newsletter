<?php

return [

    /*
     * API endpoint settings.
     *
     */
    'api' => [
        'endpoint' => 'api.mailgun.net',
        'version' => 'v3',
        'ssl' => true
    ],

    /*
     * Domain name registered with Mailgun
     *
     */
//    'domain' => App\Setting::getSetting(Setting::$MAILGUN_DOMAIN)->value,
    'domain' => env('MAILGUN_DOMAIN','educare.school'),

    /*
     * Mailgun (private) API key
     *
     */
//    'api_key' => Setting::getSetting(Setting::$MAILGUN_PRIVATE)->value,
    'api_key' => env('MAILGUN_PRIVATE','key-f7047c2ac9e5bd0720c04e613f559e60'),

    /*
     * Mailgun public API key
     *
     */
//    'public_api_key' => Setting::getSetting(Setting::$MAILGUN_PUBLIC)->value,
    'public_api_key' => env('MAILGUN_PUBLIC','pubkey-2b165c02f6ff1e4de6315aacf663bad0'),

    /*
     * You may wish for all e-mails sent with Mailgun to be sent from
     * the same address. Here, you may specify a name and address that is
     * used globally for all e-mails that are sent by this application through Mailgun.
     *
     */
    'from' => [
        'address' => env('MAILGUN_FROM_ADDRESS','admin@linqshows.com'),
        'name' => env('MAILGUN_FROM_NAME','Admin')
    ]
   /* 'from' => [
        'address' => Setting::getSetting(Setting::$MAILGUN_FROM_ADDRESS)->value,
        'name' => Setting::getSetting(Setting::$MAILGUN_FROM_NAME)->value
    ]*/,

    /*
     * Global reply-to e-mail address
     *
     */
//    'reply_to' => Setting::getSetting(Setting::$MAILGUN_REPLY_TO)->value,
    'reply_to' => env('MAILGUN_FROM_ADDRESS','Admin'),

    /*
     * Force the from address
     *
     * When your `from` e-mail address is not from the domain specified some
     * e-mail clients (Outlook) tend to display the from address incorrectly
     * By enabling this setting, Mailgun will force the `from` address so the
     * from address will be displayed correctly in all e-mail clients.
     *
     * WARNING:
     * This parameter is not documented in the Mailgun documentation
     * because if enabled, Mailgun is not able to handle soft bounces
     *
     */
    'force_from_address' => true,

    /*
     * Testing
     *
     * Catch All address
     *
     * Specify an email address that receives all emails send with Mailgun
     * This email address will overwrite all email addresses within messages
     */
    'catch_all' => "",

    /*
     * Testing
     *
     * Mailgun's testmode
     *
     * Send messages in test mode by setting this setting to true.
     * When you do this, Mailgun will accept the message but will
     * not send it. This is useful for testing purposes.
     *
     * Note: Mailgun DOES charge your account for messages sent in test mode.
     */
    'testmode' => false
];
