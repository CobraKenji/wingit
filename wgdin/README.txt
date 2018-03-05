WGDM - Windows - git DIN masternode - cobrakenji

1. From a Windows wallet, run Win-Git-Dinero-Masternode.bat to:
	connect to VPS
	create new sudo user
	place gitandexecute file on VPS

2. gitandexecute will:
	set your new users password
	optional install fail2ban
	optional install ufw with port configuration
	install dinerocore
	create dinero.conf
	install sentinel
	install cronjobs
	launch dinero daemon
	create small troubleshooting txt file

3. You then need to start your masternode alias on your local wallet

4. Wait for the masternode to sync. Check with: 
	~/dinerocore-1.0.0/bin/dinero-cli mnsync status

   Check sentinel with: 
	cd ~/.dinerocore/sentinel && venv/bin/python bin/sentinel.py

5. profit

