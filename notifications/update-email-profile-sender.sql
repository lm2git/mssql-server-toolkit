DECLARE @OldSender NVARCHAR(255) = 'old-sender@email.com'
DECLARE @NewSender NVARCHAR(255) = 'new-sender@email.com'

UPDATE msdb.dbo.sysmail_account
SET email_address = @NewSender
WHERE email_address = @OldSender;

-- Verify the change
SELECT * FROM msdb.dbo.sysmail_account WHERE email_address = @NewSender;
