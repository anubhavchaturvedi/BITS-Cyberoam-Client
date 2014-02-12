BITS-Cyberoam-Client
====================

This is an application to ease the process of regularly logging in and out of the Cyberoam system implemented in BITS Pilani campus. The application after installation automatically creates a launcher icon, clicking on which you login. To logout you can right click the same icon and click on Logout.

Message returned by the server is displayed as a notification.

SETUP INSTRUCTIONS:
<ul>
      <li>Extract the contents to a folder ( eg. BITS-Cyberoam-Client-master ) and move to the directory. Then execute the main_installer.sh file.</li>

      <li>cd BITS-Cyberoam-Client-master
          ./main_installer.sh</li>
          
      <li> cp ~/.local/share/applications/BITS_CyberoamClient.desktop Desktop (Creates icon in desktop) </li>
      
</ul>


The credentials can be managed by editing the file /etc/BITS_CyberoamClient/BITS_CyberoamClient.conf

DEPENDENCY:
<ul>
	<li>curl</li>
</ul>

Main directory locations:
<ul>
  <li>/etc/BITS_CyberoamClient</li>
  <li>/usr/share/BITS_CyberoamClient</li>
  <li>/home/anubhav/.local/share/applications/</li>
</ul>

TODO :
<ul>
  <li>Automate the process further by logging in as soon as the system connects to the network.</li>
<ul>
