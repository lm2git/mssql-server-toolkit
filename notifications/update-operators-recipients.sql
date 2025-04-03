DECLARE @OldRecipient NVARCHAR(255) = 'old-recipient@email.com'
DECLARE @NewRecipient NVARCHAR(255) = 'new-recipient@email.com'

UPDATE msdb.dbo.sysoperators
SET email_address = @NewRecipient
WHERE email_address = @OldRecipient;

-- Verify the change
SELECT * FROM msdb.dbo.sysoperators WHERE email_address = @NewRecipient;

EXEC msdb.dbo.sysmail_stop_sp;
GO
EXEC msdb.dbo.sysmail_start_sp;
GO
