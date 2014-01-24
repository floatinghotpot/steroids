FasdUAS 1.101.10   ��   ��    k             i         I     �� 	��
�� .aevtoappnull  �   � **** 	 o      ���� 0 argv  ��    k     
 
     l     ��������  ��  ��        l     ��  ��    p j First, let's make sure that access for assistive devices is turned on - the script won't work without it.     �   �   F i r s t ,   l e t ' s   m a k e   s u r e   t h a t   a c c e s s   f o r   a s s i s t i v e   d e v i c e s   i s   t u r n e d   o n   -   t h e   s c r i p t   w o n ' t   w o r k   w i t h o u t   i t .      n        I    �������� .0 ensureassistiveaccess ensureAssistiveAccess��  ��     f           l   ��������  ��  ��        Z      ��   =        l    ����  I   ��  ��
�� .corecnte****       ****   o    ���� 0 argv  ��  ��  ��    m    ����    k     ! !  " # " l   �� $ %��   $ 6 0log "No arguments given, opening any index.html"    % � & & ` l o g   " N o   a r g u m e n t s   g i v e n ,   o p e n i n g   a n y   i n d e x . h t m l " #  '�� ' r     ( ) ( m     * * � + +  i n d e x . h t m l ) o      ���� 0 
stringpart 
StringPart��  ��    k     , ,  - . - l   �� / 0��   / % log "Opening " & item 1 of argv    0 � 1 1 > l o g   " O p e n i n g   "   &   i t e m   1   o f   a r g v .  2�� 2 r     3 4 3 n     5 6 5 4    �� 7
�� 
cobj 7 m    ����  6 o    ���� 0 argv   4 o      ���� 0 
stringpart 
StringPart��     8 9 8 l   ��������  ��  ��   9  : ; : l   �� < =��   < #  Make sure Safari is running.    = � > > :   M a k e   s u r e   S a f a r i   i s   r u n n i n g . ;  ? @ ? l   �� A B��   A � � Note that we don't *activate* it yet, so that if something goes wrong the Terminal window stays active and the user gets to see error messages.    B � C C    N o t e   t h a t   w e   d o n ' t   * a c t i v a t e *   i t   y e t ,   s o   t h a t   i f   s o m e t h i n g   g o e s   w r o n g   t h e   T e r m i n a l   w i n d o w   s t a y s   a c t i v e   a n d   t h e   u s e r   g e t s   t o   s e e   e r r o r   m e s s a g e s . @  D E D l   �� F G��   F � � (This also avoids a bug affecting both OSX 10.8 and 10.9 where, if Safari isn't running, `tell application "Safari" to activate` *launches, but doesn't activate* Safari.)    G � H HV   ( T h i s   a l s o   a v o i d s   a   b u g   a f f e c t i n g   b o t h   O S X   1 0 . 8   a n d   1 0 . 9   w h e r e ,   i f   S a f a r i   i s n ' t   r u n n i n g ,   ` t e l l   a p p l i c a t i o n   " S a f a r i "   t o   a c t i v a t e `   * l a u n c h e s ,   b u t   d o e s n ' t   a c t i v a t e *   S a f a r i . ) E  I J I O   ' K L K I  ! &������
�� .ascrnoop****      � ****��  ��   L m     M M�                                                                                  sfri  alis    N  Macintosh HD               ��{�H+  p��
Safari.app                                                     pз͜V�        ����  	                Applications    ����      ͜��    p��  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��   J  N O N l  ( (��������  ��  ��   O  P Q P O   ( R S R k   ,
 T T  U V U l  , ,��������  ��  ��   V  W X W O   , Y Z Y k   3 [ [  \ ] \ l  3 3��������  ��  ��   ]  ^ _ ^ l  3 3�� ` a��   ` u o Try to obtain a reference to the `Developer > {iPhone|iPad} Simulator`submenu items; give up after a while.			    a � b b �   T r y   t o   o b t a i n   a   r e f e r e n c e   t o   t h e   ` D e v e l o p e r   >   { i P h o n e | i P a d }   S i m u l a t o r ` s u b m e n u   i t e m s ;   g i v e   u p   a f t e r   a   w h i l e . 	 	 	 _  c d c r   3 6 e f e m   3 4��
�� 
msng f o      ���� 0 
simsubmenu 
simSubMenu d  g h g Y   7 � i�� j k�� i k   A � l l  m n m l  A A�� o p��   o Z T Note that we reference the Developer menu by *index*, as its name may be localized.    p � q q �   N o t e   t h a t   w e   r e f e r e n c e   t h e   D e v e l o p e r   m e n u   b y   * i n d e x * ,   a s   i t s   n a m e   m a y   b e   l o c a l i z e d . n  r s r l  A A�� t u��   t � � Furthermore, we search for the relevant menu item by the tokens "iPhone" or "iPad" only, since the "Simulator" part could be localized, too.    u � v v   F u r t h e r m o r e ,   w e   s e a r c h   f o r   t h e   r e l e v a n t   m e n u   i t e m   b y   t h e   t o k e n s   " i P h o n e "   o r   " i P a d "   o n l y ,   s i n c e   t h e   " S i m u l a t o r "   p a r t   c o u l d   b e   l o c a l i z e d ,   t o o . s  w x w l  A A�� y z��   y n h Note that the menu-item name reflects whether the simulator currently simulates the iPhone or the iPad.    z � { { �   N o t e   t h a t   t h e   m e n u - i t e m   n a m e   r e f l e c t s   w h e t h e r   t h e   s i m u l a t o r   c u r r e n t l y   s i m u l a t e s   t h e   i P h o n e   o r   t h e   i P a d . x  | } | O   A � ~  ~ Z   m � � ����� � I  m r������
�� .coredoexnull���     ****��  ��   � l  u � � � � � k   u � � �  � � � l  u u�� � ���   � u o Simulate a click on the menu item so as to get it to populate its submenu with the currently debuggable pages.    � � � � �   S i m u l a t e   a   c l i c k   o n   t h e   m e n u   i t e m   s o   a s   t o   g e t   i t   t o   p o p u l a t e   i t s   s u b m e n u   w i t h   t h e   c u r r e n t l y   d e b u g g a b l e   p a g e s . �  � � � I  u z�� ���
�� .prcsclicnull��� ��� uiel �  g   u v��   �  � � � l  { {�� � ���   � 9 3 Loop over submenu items and find the desired page.    � � � � f   L o o p   o v e r   s u b m e n u   i t e m s   a n d   f i n d   t h e   d e s i r e d   p a g e . �  � � � r   { � � � � m   { |��
�� 
msng � o      ���� 0 pageurl pageUrl �  � � � X   � � ��� � � k   � � � �  � � � l  � � � � � � r   � � � � � n   � � � � � 1   � ���
�� 
pALL � o   � ����� 0 itm   � o      ���� 	0 props   �  y !! Bizarrely, this intermediate step is needed - directly accessing `help of itm` leads to strange behavior on OSX 10.8.    � � � � �   ! !   B i z a r r e l y ,   t h i s   i n t e r m e d i a t e   s t e p   i s   n e e d e d   -   d i r e c t l y   a c c e s s i n g   ` h e l p   o f   i t m `   l e a d s   t o   s t r a n g e   b e h a v i o r   o n   O S X   1 0 . 8 . �  � � � l  � � � � � � r   � � � � � n   � � � � � 1   � ���
�� 
help � o   � ����� 	0 props   � o      ���� 0 pageurl pageUrl � &   Page URL is in `help` property.    � � � � @   P a g e   U R L   i s   i n   ` h e l p `   p r o p e r t y . �  ��� � Z   � � � ����� � F   � � � � � >  � � � � � o   � ����� 0 pageurl pageUrl � m   � ���
�� 
msng � E   � � � � � o   � ����� 0 pageurl pageUrl � o   � ����� 0 
stringpart 
StringPart � k   � � � �  � � � l  � ��� � ���   � G A Only now that we've found a matching page do we activate Safari.    � � � � �   O n l y   n o w   t h a t   w e ' v e   f o u n d   a   m a t c h i n g   p a g e   d o   w e   a c t i v a t e   S a f a r i . �  � � � O  � � � � � I  � �������
�� .miscactvnull��� ��� null��  ��   � m   � � � ��                                                                                  sfri  alis    N  Macintosh HD               ��{�H+  p��
Safari.app                                                     pз͜V�        ����  	                Applications    ����      ͜��    p��  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��   �  � � � l  � ��� � ���   � R L Finally, click on the item to show the Web Inspector for the matching page.    � � � � �   F i n a l l y ,   c l i c k   o n   t h e   i t e m   t o   s h o w   t h e   W e b   I n s p e c t o r   f o r   t h e   m a t c h i n g   p a g e . �  � � � I  � ��� ���
�� .prcsclicnull��� ��� uiel � o   � ����� 0 itm  ��   �  ��� � L   � �����  ��  ��  ��  ��  �� 0 itm   � n   � � � � � 2  � ���
�� 
menI � n   � � � � � m   � ���
�� 
menE �  g   � � �  � � � l  � ��� � ���   � / ) Report error, if no matching page found.    � � � � R   R e p o r t   e r r o r ,   i f   n o   m a t c h i n g   p a g e   f o u n d . �  ��� � R   � ��� ���
�� .ascrerr ****      � **** � b   � � � � � b   � � � � � m   � � � � � � � N N o   c u r r e n t l y   d e b u g g a b l e   p a g e   m a t c h i n g   ' � o   � ����� 0 
stringpart 
StringPart � m   � � � � � � �  '   f o u n d .��  ��   �   Menu item found?    � � � � "   M e n u   i t e m   f o u n d ?��  ��    l  A j ����� � 6  A j � � � n   A M � � � 4  H M�� �
�� 
menI � m   K L����  � n   A H � � � 4   E H�� �
�� 
menE � m   F G������ � 4   A E�� �
�� 
mbar � m   C D����  � G   P i � � � E   Q \ � � � 1   R V��
�� 
pnam � m   W [ � � � � �  i P h o n e � E   ] h � � � 1   ^ b��
�� 
pnam � m   c g � � � � �  i P a d��  ��   }  ��� � l  � � � � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � � � � ?ə�������   � 0 * Menu item not (yet) available; try again.    � � � � T   M e n u   i t e m   n o t   ( y e t )   a v a i l a b l e ;   t r y   a g a i n .��  �� 0 i   j m   : ;����  k m   ; <���� ��   h  � � � l  � ���������  ��  ��   �  � � � l  � ��� ��    ^ X Getting here means that the simulator menu item wasn't found within the timeout period.    � �   G e t t i n g   h e r e   m e a n s   t h a t   t h e   s i m u l a t o r   m e n u   i t e m   w a s n ' t   f o u n d   w i t h i n   t h e   t i m e o u t   p e r i o d . �  l  � �����     Abort with an error.    � *   A b o r t   w i t h   a n   e r r o r . 	 R   ���
��
�� .ascrerr ****      � ****
 m   �� C a n n o t   d e t e r m i n e   d e b u g g a b l e   p a g e s :   i O S   S i m u l a t o r - r e l a t e d   m e n u   i t e m s   n o t   f o u n d   i n   S a f a r i . 
 M a k e   s u r e   t h a t   t h e   ` D e v e l o p e r `   m e n u   i s   a c t i v a t e d   i n   t h e   a d v a n c e d   p r e f e r e n c e s   a n d   t h a t   t h e   i O S   s i m u l a t o r   i s   r u n n i n g   a   U I W e b V i e w - b a s e d   a p p .��  	  l ��������  ��  ��   �� l ��������  ��  ��  ��   Z 4   , 0��
�� 
prcs m   . / �  S a f a r i X � l 		�~�}�|�~  �}  �|  �   S m   ( )�                                                                                  sevs  alis    �  Macintosh HD               ��{�H+  p��System Events.app                                              tw{�A��        ����  	                CoreServices    ����      �A�9    p��p��p��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   Q �{ l �z�y�x�z  �y  �x  �{     l     �w�v�u�w  �v  �u    l     �t�t   d ^ Tries to ensure that access for assistive devices is turned on so as to enable GUI scripting.    � �   T r i e s   t o   e n s u r e   t h a t   a c c e s s   f o r   a s s i s t i v e   d e v i c e s   i s   t u r n e d   o n   s o   a s   t o   e n a b l e   G U I   s c r i p t i n g .  l     �s �s   o i - Up to 10.8.x, access can be turned on programmatically, on demand - via an admin authorization prompt.     �!! �   -   U p   t o   1 0 . 8 . x ,   a c c e s s   c a n   b e   t u r n e d   o n   p r o g r a m m a t i c a l l y ,   o n   d e m a n d   -   v i a   a n   a d m i n   a u t h o r i z a t i o n   p r o m p t . "#" l     �r$%�r  $ � � - From 10.9, the best we can do is display a GUI prompt, then open System Preferences to the relevant pane, then exit, telling the user to try again after interactively enabling access.   % �&&t   -   F r o m   1 0 . 9 ,   t h e   b e s t   w e   c a n   d o   i s   d i s p l a y   a   G U I   p r o m p t ,   t h e n   o p e n   S y s t e m   P r e f e r e n c e s   t o   t h e   r e l e v a n t   p a n e ,   t h e n   e x i t ,   t e l l i n g   t h e   u s e r   t o   t r y   a g a i n   a f t e r   i n t e r a c t i v e l y   e n a b l i n g   a c c e s s .# '(' l     �q)*�q  )  	 Returns:   * �++    R e t u r n s :( ,-, l     �p./�p  . M G 	Only returns if access is already enabled; throws an error otherwise.   / �00 �   	 O n l y   r e t u r n s   i f   a c c e s s   i s   a l r e a d y   e n a b l e d ;   t h r o w s   a n   e r r o r   o t h e r w i s e .- 121 l     �o34�o  3  	 Example:   4 �55    E x a m p l e :2 676 l     �n89�n  8 r l		my ensureAssistiveAccess() # throws error, if not enabled and couldn't be enabled programmatically (10.9+)   9 �:: � 	 	 m y   e n s u r e A s s i s t i v e A c c e s s ( )   #   t h r o w s   e r r o r ,   i f   n o t   e n a b l e d   a n d   c o u l d n ' t   b e   e n a b l e d   p r o g r a m m a t i c a l l y   ( 1 0 . 9 + )7 ;<; l     �m=>�m  = &     # alternatively, catch error    > �?? @       #   a l t e r n a t i v e l y ,   c a t c h   e r r o r  < @A@ l     �lBC�l  B     try    C �DD        t r y  A EFE l     �kGH�k  G #  		my ensureAssistiveAccess()   H �II :   	 	 m y   e n s u r e A s s i s t i v e A c c e s s ( )F JKJ l     �jLM�j  L     on error   M �NN        o n   e r r o rK OPO l     �iQR�i  Q [ U       # Exit quietly, relying on the prompt to have provided sufficient information.   R �SS �               #   E x i t   q u i e t l y ,   r e l y i n g   o n   t h e   p r o m p t   t o   h a v e   p r o v i d e d   s u f f i c i e n t   i n f o r m a t i o n .P TUT l     �hVW�h  V  	    return   W �XX  	         r e t u r nU YZY l     �g[\�g  [  
   end try   \ �]]        e n d   t r yZ ^_^ i    `a` I      �f�e�d�f .0 ensureassistiveaccess ensureAssistiveAccess�e  �d  a k    1bb cdc q      ee �cf�c 0 ok  f �bg�b  0 ispremavericks isPreMavericksg �ah�a 0 veros verOsh �`i�` 0 vermajor verMajori �_j�_ 0 verminor verMinorj �^�]�^ 0 btn  �]  d klk l     �\mn�\  m 0 * Determine if access is currently enabled.   n �oo T   D e t e r m i n e   i f   a c c e s s   i s   c u r r e n t l y   e n a b l e d .l pqp O    
rsr r    	tut 1    �[
�[ 
uienu o      �Z�Z 0 ok  s m     vv�                                                                                  sevs  alis    �  Macintosh HD               ��{�H+  p��System Events.app                                              tw{�A��        ����  	                CoreServices    ����      �A�9    p��p��p��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  q wxw Z   yz�Y�Xy H    {{ o    �W�W 0 ok  z k   || }~} l   �V��V   ) # See if we're running 10.8 or below   � ��� F   S e e   i f   w e ' r e   r u n n i n g   1 0 . 8   o r   b e l o w~ ��� r    )��� J    �� ��� n   ��� 1    �U
�U 
txdl� 1    �T
�T 
ascr� ��S� J    �� ��R� m    �� ���  .�R  �S  � J      �� ��� o      �Q�Q 0 orgtids orgTIDs� ��P� n     ��� 1   % '�O
�O 
txdl� 1   $ %�N
�N 
ascr�P  � ��� r   * 3��� n   * 1��� 1   / 1�M
�M 
sisv� l  * /��L�K� I  * /�J�I�H
�J .sysosigtsirr   ��� null�I  �H  �L  �K  � o      �G�G 0 veros verOs� ��� r   4 <��� c   4 :��� n   4 8��� 4  5 8�F�
�F 
citm� m   6 7�E�E � o   4 5�D�D 0 veros verOs� m   8 9�C
�C 
nmbr� o      �B�B 0 vermajor verMajor� ��� r   = E��� c   = C��� n   = A��� 4  > A�A�
�A 
citm� m   ? @�@�@ � o   = >�?�? 0 veros verOs� m   A B�>
�> 
nmbr� o      �=�= 0 verminor verMinor� ��� r   F K��� o   F G�<�< 0 orgtids orgTIDs� n     ��� 1   H J�;
�; 
txdl� 1   G H�:
�: 
ascr� ��� r   L Y��� F   L W��� B   L O��� o   L M�9�9 0 vermajor verMajor� m   M N�8�8 
� A   R U��� o   R S�7�7 0 verminor verMinor� m   S T�6�6 	� o      �5�5  0 ispremavericks isPreMavericks� ��4� Z   Z���3�� o   Z [�2�2  0 ispremavericks isPreMavericks� l  ^ z���� Q   ^ z���1� k   a q�� ��� l  a a�0���0  � O I Try to turn it on - will prompt for authorization via admin credentials.   � ��� �   T r y   t o   t u r n   i t   o n   -   w i l l   p r o m p t   f o r   a u t h o r i z a t i o n   v i a   a d m i n   c r e d e n t i a l s .� ��/� O   a q��� k   e p�� ��� r   e j��� m   e f�.
�. boovtrue� 1   f i�-
�- 
uien� ��,� l  k p���� r   k p��� 1   k n�+
�+ 
uien� o      �*�* 0 ok  � = 7 Check if the user actually provided the authorization.   � ��� n   C h e c k   i f   t h e   u s e r   a c t u a l l y   p r o v i d e d   t h e   a u t h o r i z a t i o n .�,  � m   a b���                                                                                  sevs  alis    �  Macintosh HD               ��{�H+  p��System Events.app                                              tw{�A��        ����  	                CoreServices    ����      �A�9    p��p��p��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �/  � R      �)�(�'
�) .ascrerr ****      � ****�(  �'  �1  � U O 10.8-: we can try to turn it on ourselves, which will prompt for authorization   � ��� �   1 0 . 8 - :   w e   c a n   t r y   t o   t u r n   i t   o n   o u r s e l v e s ,   w h i c h   w i l l   p r o m p t   f o r   a u t h o r i z a t i o n�3  � l  }���� k   }�� ��� l  } }�&���&  � a [ Try a dummy GUI scripting operation - which we know will fail - in the hope that this will   � ��� �   T r y   a   d u m m y   G U I   s c r i p t i n g   o p e r a t i o n   -   w h i c h   w e   k n o w   w i l l   f a i l   -   i n   t h e   h o p e   t h a t   t h i s   w i l l� ��� l  } }�%���%  � k e get the app at hand registered in System Preferences > Security & Privacy > Privacy > Accessibility.   � ��� �   g e t   t h e   a p p   a t   h a n d   r e g i s t e r e d   i n   S y s t e m   P r e f e r e n c e s   >   S e c u r i t y   &   P r i v a c y   >   P r i v a c y   >   A c c e s s i b i l i t y .� ��� l  } }�$���$  �   ?? Does this work?   � ��� &   ? ?   D o e s   t h i s   w o r k ?� ��� Q   } ����#� O  � ���� n   � ���� 2  � ��"
�" 
cwin� 4   � ��!�
�! 
prcs� m   � ��� ���  S y s t e m U I S e r v e r� m   � ����                                                                                  sevs  alis    �  Macintosh HD               ��{�H+  p��System Events.app                                              tw{�A��        ����  	                CoreServices    ����      �A�9    p��p��p��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � R      � ��
�  .ascrerr ****      � ****�  �  �#  � ��� r   � �   n   � � 1   � ��
� 
pnam m   � ��
� misccura o      �� 0 appname appName�  l  � � Z  � �	
��	 =   � � o   � ��� 0 appname appName m   � � �  o s a s c r i p t
 r   � � m   � � �  T e r m i n a l o      �� 0 appname appName�  �   R L ?? how can we deal with other apps that invoke `osascript`, such as Alfred?    � �   ? ?   h o w   c a n   w e   d e a l   w i t h   o t h e r   a p p s   t h a t   i n v o k e   ` o s a s c r i p t ` ,   s u c h   a s   A l f r e d ?  r   � � b   � � b   � � m   � � � ~ Y o u   m u s t   t u r n   o n   A C C E S S   F O R   A S S I S T I V E   D E V I C E S   f o r   a p p l i c a t i o n   ' o   � ��� 0 appname appName m   � � � � '   ( S y s t e m   P r e f e r e n c e s   >   S e c u r i t y   &   P r i v a c y   >   P r i v a c y   >   A c c e s s i b i l i t y )   f i r s t ,   t h e n   r e t r y . o      �� 0 errmsg errMsg  !  Q   �"#�" k   �$$ %&% I  � ��'(
� .sysodlogaskr        TEXT' b   � �)*) b   � �+,+ b   � �-.- o   � ��� 0 errmsg errMsg. 1   � ��
� 
lnfd, 1   � ��
� 
lnfd* m   � �// �00 � P r e s s   O K   t o   o p e n   S y s t e m   P r e f e r e n c e s   n o w ;   u n l o c k ,   i f   n e c e s s a r y ,   t h e n   l o c a t e   t h e   a p p l i c a t i o n   i n   t h e   l i s t   a n d   c h e c k   i t .( �1�
� 
disp1 m   � ��
� stic   �  & 232 l  � ��45�  4 2 , We only get here if the user didn't cancel.   5 �66 X   W e   o n l y   g e t   h e r e   i f   t h e   u s e r   d i d n ' t   c a n c e l .3 787 l  � ��9:�  9 � � Open System Preferences and show the appropriate pane. (This is the best we can do in guiding the user - further guidance would require the very kind of assistive access we're trying to turn on.)   : �;;�   O p e n   S y s t e m   P r e f e r e n c e s   a n d   s h o w   t h e   a p p r o p r i a t e   p a n e .   ( T h i s   i s   t h e   b e s t   w e   c a n   d o   i n   g u i d i n g   t h e   u s e r   -   f u r t h e r   g u i d a n c e   w o u l d   r e q u i r e   t h e   v e r y   k i n d   o f   a s s i s t i v e   a c c e s s   w e ' r e   t r y i n g   t o   t u r n   o n . )8 <�
< O   �=>= k   �?? @A@ I  � ��	��
�	 .miscactvnull��� ��� null�  �  A B�B O   �CDC I  ��E�
� .miscmvisnull���     ****E 4   � ��F
� 
xppaF m   � �GG �HH " P r i v a c y _ A s s i s t i v e�  D 5   � ��I�
� 
xppbI m   � �JJ �KK : c o m . a p p l e . p r e f e r e n c e . s e c u r i t y
� kfrmID  �  > m   � �LL�                                                                                  sprf  alis    ~  Macintosh HD               ��{�H+  p��System Preferences.app                                         t~t�?F        ����  	                Applications    ����      �?E�    p��  1Macintosh HD:Applications: System Preferences.app   .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  #Applications/System Preferences.app   / ��  �
  # R      � ����
�  .ascrerr ****      � ****��  ��  �  ! M��M l ��NO��  N g a We must return false, as we can't easily and reliably wait for the user to finish the operation.   O �PP �   W e   m u s t   r e t u r n   f a l s e ,   a s   w e   c a n ' t   e a s i l y   a n d   r e l i a b l y   w a i t   f o r   t h e   u s e r   t o   f i n i s h   t h e   o p e r a t i o n .��  � f ` 10.9+: we cannot turn it on ourselves, it has to be enabled *interactively*, *per application*.   � �QQ �   1 0 . 9 + :   w e   c a n n o t   t u r n   i t   o n   o u r s e l v e s ,   i t   h a s   t o   b e   e n a b l e d   * i n t e r a c t i v e l y * ,   * p e r   a p p l i c a t i o n * .�4  �Y  �X  x R��R Z  1ST��US H  VV o  ���� 0 ok  T k  ,WW XYX Z  'Z[����Z o  ����  0 ispremavericks isPreMavericks[ l #\]^\ r  #_`_ m  !aa �bb Y o u   m u s t   t u r n   o n   A C C E S S   F O R   A S S I S T I V E   D E V I C E S   f i r s t ,   v i a   S y s t e m   P r e f e r e n c e s   >   A c c e s s i b i l i t y   >   E n a b l e   a c c e s s   f o r   a s s i s t i v e   d e v i c e s` o      ���� 0 errmsg errMsg] d ^ This indicates that the authorization prompt was aborted; for 10.9+, errMsg was set above.			   ^ �cc �   T h i s   i n d i c a t e s   t h a t   t h e   a u t h o r i z a t i o n   p r o m p t   w a s   a b o r t e d ;   f o r   1 0 . 9 + ,   e r r M s g   w a s   s e t   a b o v e . 	 	 	��  ��  Y d��d R  (,��e��
�� .ascrerr ****      � ****e o  *+���� 0 errmsg errMsg��  ��  ��  U L  /1ff m  /0��
�� boovtrue��  _ g��g l     ��������  ��  ��  ��       
��hijk��lm������  h ����������������
�� .aevtoappnull  �   � ****�� .0 ensureassistiveaccess ensureAssistiveAccess�� 0 
stringpart 
StringPart�� 0 
simsubmenu 
simSubMenu�� 0 pageurl pageUrl�� 	0 props  ��  ��  i �� ����no��
�� .aevtoappnull  �   � ****�� 0 argv  ��  n �������� 0 argv  �� 0 i  �� 0 itm  o #���� *���� M������������������p�� � ������������������� � � ����� .0 ensureassistiveaccess ensureAssistiveAccess
�� .corecnte****       ****�� 0 
stringpart 
StringPart
�� 
cobj
�� .ascrnoop****      � ****
�� 
prcs
�� 
msng�� 0 
simsubmenu 
simSubMenu�� 
�� 
mbar
�� 
menE����
�� 
menIp  
�� 
pnam
�� .coredoexnull���     ****
�� .prcsclicnull��� ��� uiel�� 0 pageurl pageUrl
�� 
kocl
�� 
pALL�� 	0 props  
�� 
help
�� 
bool
�� .miscactvnull��� ��� null
�� .sysodelanull��� ��� nmbr��)j+  O�j j  �E�Y ��k/E�O� *j UO� �*��/ ��E�O �k�kh *�k/��/a k/a [[a ,\Za @\[a ,\Za @B1 �*j  |*j O�E` O ]*�,a -[a �l kh �a ,E` O_ a ,E` O_ �	 _ �a & � *j UO�j OhY h[OY��O)ja �%a %Y hUOa  j ![OY�BO)ja "OPUOPUOPj ��a����qr���� .0 ensureassistiveaccess ensureAssistiveAccess��  ��  q 	�������������������� 0 ok  ��  0 ispremavericks isPreMavericks�� 0 veros verOs�� 0 vermajor verMajor�� 0 verminor verMinor�� 0 btn  �� 0 orgtids orgTIDs�� 0 appname appName�� 0 errmsg errMsgr &v��������������������������������������/������L����J����G��a
�� 
uien
�� 
ascr
�� 
txdl
�� 
cobj
�� .sysosigtsirr   ��� null
�� 
sisv
�� 
citm
�� 
nmbr�� 
�� 	
�� 
bool��  ��  
�� 
prcs
�� 
cwin
�� misccura
�� 
pnam
�� 
lnfd
�� 
disp
�� stic   
�� .sysodlogaskr        TEXT
�� .miscactvnull��� ��� null
�� 
xppb
�� kfrmID  
�� 
xppa
�� .miscmvisnull���     ****��2� *�,E�UO���,�kvlvE[�k/E�Z[�l/��,FZO*j �,E�O��k/�&E�O��l/�&E�O���,FO��	 ���&E�O� ! � e*�,FO*�,E�UW X  hY � � *�a /a -EUW X  hOa a ,E�O�a   
a E�Y hOa �%a %E�O E�_ %_ %a %a a l Oa  #*j O*a a  a !0 *a "a #/j $UUW X  hOPY hO� � 
a %E�Y hO)j�Y ek �ss  m a i n
�� 
msngl �tth f i l e : / / / U s e r s / m k l e m e n t / L i b r a r y / A p p l i c a t i o n % 2 0 S u p p o r t / i P h o n e % 2 0 S i m u l a t o r / 7 . 0 . 3 / A p p l i c a t i o n s / 9 E 9 B E 7 1 F - A A 1 2 - 4 2 E 8 - B D 4 7 - C 8 F D 8 7 0 1 5 E 0 4 / D o c u m e n t s / a p p l i c a t i o n s / l o c a l / 1 3 8 3 7 9 3 2 9 4 0 0 0 / m a i n . h t m lm ����u
�� 
minW
�� 
msngu ����v
�� 
orie
�� 
msngv ��wx
�� 
posnw ��y�� y  ������  �� 9x ����z
�� 
pcls
�� 
menIz ��{|
�� 
rold{ �}}  m e n u   i t e m| ����~
�� 
axds
�� 
msng~ ����
�� 
focu
�� 
msng ����
�� 
titl� ���  m a i n . h t m l� ����
�� 
ptsz� ����� �  �������� � �����
�� 
valL
�� 
msng� ��l�
�� 
help� �����
�� 
enaB
�� boovtrue� ����
�� 
maxV
� 
msng� �~��
�~ 
role� ���  A X M e n u I t e m� �}��
�} 
ects� �|��|  �   � �{�z�
�{ 
sbrl
�z 
msng� �y�x�
�y 
selE
�x boovfals� �w��
�w 
pnam� ���  m a i n . h t m l� �v��u
�v 
desc� ���  m e n u   i t e m�u  ��  ��  ascr  ��ޭ