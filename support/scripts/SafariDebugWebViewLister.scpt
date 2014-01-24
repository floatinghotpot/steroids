FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 p j First, let's make sure that access for assistive devices is turned on - the script won't work without it.    
 �   �   F i r s t ,   l e t ' s   m a k e   s u r e   t h a t   a c c e s s   f o r   a s s i s t i v e   d e v i c e s   i s   t u r n e d   o n   -   t h e   s c r i p t   w o n ' t   w o r k   w i t h o u t   i t .      l     ����  n        I    �������� .0 ensureassistiveaccess ensureAssistiveAccess��  ��     f     ��  ��        l     ��������  ��  ��        l     ��  ��    h b Note: On both 10.8 and 10.9 it seems sufficient to merely LAUNCH Safari - no need to ACTIVATE it.     �   �   N o t e :   O n   b o t h   1 0 . 8   a n d   1 0 . 9   i t   s e e m s   s u f f i c i e n t   t o   m e r e l y   L A U N C H   S a f a r i   -   n o   n e e d   t o   A C T I V A T E   i t .      l    ����  O       I  
 ������
�� .ascrnoop****      � ****��  ��    m      �                                                                                  sfri  alis    N  Macintosh HD               ��{�H+  p��
Safari.app                                                     pз͜V�        ����  	                Applications    ����      ͜��    p��  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  ��  ��        l     ��������  ��  ��       !   l   � "���� " O    � # $ # k    � % %  & ' & l   ��������  ��  ��   '  ( ) ( O    � * + * k    � , ,  - . - l   ��������  ��  ��   .  / 0 / l   �� 1 2��   1 u o Try to obtain a reference to the `Developer > {iPhone|iPad} Simulator`submenu items; give up after a while.			    2 � 3 3 �   T r y   t o   o b t a i n   a   r e f e r e n c e   t o   t h e   ` D e v e l o p e r   >   { i P h o n e | i P a d }   S i m u l a t o r ` s u b m e n u   i t e m s ;   g i v e   u p   a f t e r   a   w h i l e . 	 	 	 0  4 5 4 r     6 7 6 m    ��
�� 
msng 7 o      ���� 0 
simsubmenu 
simSubMenu 5  8 9 8 Y     � :�� ; <�� : k   * � = =  > ? > l  * *�� @ A��   @ Z T Note that we reference the Developer menu by *index*, as its name may be localized.    A � B B �   N o t e   t h a t   w e   r e f e r e n c e   t h e   D e v e l o p e r   m e n u   b y   * i n d e x * ,   a s   i t s   n a m e   m a y   b e   l o c a l i z e d . ?  C D C l  * *�� E F��   E � � Furthermore, we search for the relevant menu item by the tokens "iPhone" or "iPad" only, since the "Simulator" part could be localized, too.    F � G G   F u r t h e r m o r e ,   w e   s e a r c h   f o r   t h e   r e l e v a n t   m e n u   i t e m   b y   t h e   t o k e n s   " i P h o n e "   o r   " i P a d "   o n l y ,   s i n c e   t h e   " S i m u l a t o r "   p a r t   c o u l d   b e   l o c a l i z e d ,   t o o . D  H I H l  * *�� J K��   J n h Note that the menu-item name reflects whether the simulator currently simulates the iPhone or the iPad.    K � L L �   N o t e   t h a t   t h e   m e n u - i t e m   n a m e   r e f l e c t s   w h e t h e r   t h e   s i m u l a t o r   c u r r e n t l y   s i m u l a t e s   t h e   i P h o n e   o r   t h e   i P a d . I  M N M O   * � O P O Z   L � Q R���� Q I  L Q������
�� .coredoexnull���     ****��  ��   R l  T � S T U S k   T � V V  W X W l  T T�� Y Z��   Y u o Simulate a click on the menu item so as to get it to populate its submenu with the currently debuggable pages.    Z � [ [ �   S i m u l a t e   a   c l i c k   o n   t h e   m e n u   i t e m   s o   a s   t o   g e t   i t   t o   p o p u l a t e   i t s   s u b m e n u   w i t h   t h e   c u r r e n t l y   d e b u g g a b l e   p a g e s . X  \ ] \ I  T Y�� ^��
�� .prcsclicnull��� ��� uiel ^  g   T U��   ]  _ ` _ l  Z Z�� a b��   a 5 / Loop over submenu items and collect page URLs.    b � c c ^   L o o p   o v e r   s u b m e n u   i t e m s   a n d   c o l l e c t   p a g e   U R L s . `  d e d r   Z a f g f m   Z ] h h � i i   g o      ���� 
0 output   e  j k j r   b g l m l m   b c��
�� 
msng m o      ���� 0 pageurl pageUrl k  n o n X   h � p�� q p k   � � r r  s t s l  � � u v w u r   � � x y x n   � � z { z 1   � ���
�� 
pALL { o   � ����� 0 itm   y o      ���� 	0 props   v  y !! Bizarrely, this intermediate step is needed - directly accessing `help of itm` leads to strange behavior on OSX 10.8.    w � | | �   ! !   B i z a r r e l y ,   t h i s   i n t e r m e d i a t e   s t e p   i s   n e e d e d   -   d i r e c t l y   a c c e s s i n g   ` h e l p   o f   i t m `   l e a d s   t o   s t r a n g e   b e h a v i o r   o n   O S X   1 0 . 8 . t  } ~ } l  � �  � �  r   � � � � � n   � � � � � 1   � ���
�� 
help � o   � ����� 	0 props   � o      ���� 0 pageurl pageUrl � &   Page URL is in `help` property.    � � � � @   P a g e   U R L   i s   i n   ` h e l p `   p r o p e r t y . ~  ��� � Z   � � � ����� � F   � � � � � >  � � � � � o   � ����� 0 pageurl pageUrl � m   � ���
�� 
msng � H   � � � � E   � � � � � o   � ����� 0 pageurl pageUrl � m   � � � � � � � 4 B a c k g r o u n d / b a c k g r o u n d . h t m l � r   � � � � � b   � � � � � b   � � � � � o   � ����� 
0 output   � o   � ����� 0 pageurl pageUrl � m   � � � � � � �  
 � o      ���� 
0 output  ��  ��  ��  �� 0 itm   q n   k p � � � 2  n p��
�� 
menI � n   k n � � � m   l n��
�� 
menE �  g   k l o  � � � l  � ��� � ���   �   Return URLs.    � � � �    R e t u r n   U R L s . �  ��� � L   � � � � o   � ����� 
0 output  ��   T   Menu item found?    U � � � "   M e n u   i t e m   f o u n d ?��  ��   P l  * I ����� � 6  * I � � � n   * 4 � � � 4  1 4�� �
�� 
menI � m   2 3����  � n   * 1 � � � 4   . 1�� �
�� 
menE � m   / 0������ � 4   * .�� �
�� 
mbar � m   , -����  � G   5 H � � � E   6 = � � � 1   7 9��
�� 
pnam � m   : < � � � � �  i P h o n e � E   > G � � � 1   ? A��
�� 
pnam � m   B F � � � � �  i P a d��  ��   N  ��� � l  � � � � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � � � � ?ə�������   � 0 * Menu item not (yet) available; try again.    � � � � T   M e n u   i t e m   n o t   ( y e t )   a v a i l a b l e ;   t r y   a g a i n .��  �� 0 i   ; m   # $����  < m   $ %���� ��   9  ��� � l  � ���������  ��  ��  ��   + 4    �� �
�� 
prcs � m     � � � � �  S a f a r i )  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � ^ X Getting here means that the simulator menu item wasn't found within the timeout period.    � � � � �   G e t t i n g   h e r e   m e a n s   t h a t   t h e   s i m u l a t o r   m e n u   i t e m   w a s n ' t   f o u n d   w i t h i n   t h e   t i m e o u t   p e r i o d . �  � � � l  � ��� � ���   �   Abort with an error.    � � � � *   A b o r t   w i t h   a n   e r r o r . �  � � � R   � ��� ���
�� .ascrerr ****      � **** � m   � � � � � � �� C a n n o t   d e t e r m i n e   d e b u g g a b l e   p a g e s :   i O S   S i m u l a t o r - r e l a t e d   m e n u   i t e m s   n o t   f o u n d   i n   S a f a r i . 
 M a k e   s u r e   t h a t   t h e   ` D e v e l o p e r `   m e n u   i s   a c t i v a t e d   i n   t h e   a d v a n c e d   p r e f e r e n c e s   a n d   t h a t   t h e   i O S   s i m u l a t o r   i s   r u n n i n g   a   U I W e b V i e w - b a s e d   a p p .��   �  ��� � l  � ���������  ��  ��  ��   $ m     � ��                                                                                  sevs  alis    �  Macintosh HD               ��{�H+  p��System Events.app                                              tw{�A��        ����  	                CoreServices    ����      �A�9    p��p��p��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   !  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � d ^ Tries to ensure that access for assistive devices is turned on so as to enable GUI scripting.    � � � � �   T r i e s   t o   e n s u r e   t h a t   a c c e s s   f o r   a s s i s t i v e   d e v i c e s   i s   t u r n e d   o n   s o   a s   t o   e n a b l e   G U I   s c r i p t i n g . �  � � � l     �� � ���   � o i - Up to 10.8.x, access can be turned on programmatically, on demand - via an admin authorization prompt.    � � � � �   -   U p   t o   1 0 . 8 . x ,   a c c e s s   c a n   b e   t u r n e d   o n   p r o g r a m m a t i c a l l y ,   o n   d e m a n d   -   v i a   a n   a d m i n   a u t h o r i z a t i o n   p r o m p t . �  � � � l     �� � ���   � � � - From 10.9, the best we can do is display a GUI prompt, then open System Preferences to the relevant pane, then exit, telling the user to try again after interactively enabling access.    � � � �t   -   F r o m   1 0 . 9 ,   t h e   b e s t   w e   c a n   d o   i s   d i s p l a y   a   G U I   p r o m p t ,   t h e n   o p e n   S y s t e m   P r e f e r e n c e s   t o   t h e   r e l e v a n t   p a n e ,   t h e n   e x i t ,   t e l l i n g   t h e   u s e r   t o   t r y   a g a i n   a f t e r   i n t e r a c t i v e l y   e n a b l i n g   a c c e s s . �  � � � l     �� � ���   �  	 Returns:    � � � �    R e t u r n s : �  � � � l     �� � ���   � M G 	Only returns if access is already enabled; throws an error otherwise.    � � � � �   	 O n l y   r e t u r n s   i f   a c c e s s   i s   a l r e a d y   e n a b l e d ;   t h r o w s   a n   e r r o r   o t h e r w i s e . �  � � � l     �� � ���   �  	 Example:    � � � �    E x a m p l e : �  � � � l     �� � ���   � r l		my ensureAssistiveAccess() # throws error, if not enabled and couldn't be enabled programmatically (10.9+)    � � � � � 	 	 m y   e n s u r e A s s i s t i v e A c c e s s ( )   #   t h r o w s   e r r o r ,   i f   n o t   e n a b l e d   a n d   c o u l d n ' t   b e   e n a b l e d   p r o g r a m m a t i c a l l y   ( 1 0 . 9 + ) �  � � � l     �� ��    &     # alternatively, catch error     � @       #   a l t e r n a t i v e l y ,   c a t c h   e r r o r   �  l     ����       try     �        t r y   	 l     ��
��  
 #  		my ensureAssistiveAccess()    � :   	 	 m y   e n s u r e A s s i s t i v e A c c e s s ( )	  l     ����       on error    �        o n   e r r o r  l     ����   [ U       # Exit quietly, relying on the prompt to have provided sufficient information.    � �               #   E x i t   q u i e t l y ,   r e l y i n g   o n   t h e   p r o m p t   t o   h a v e   p r o v i d e d   s u f f i c i e n t   i n f o r m a t i o n .  l     ����    	    return    �  	         r e t u r n  l     ����    
   end try    �          e n d   t r y !"! i     #$# I      �������� .0 ensureassistiveaccess ensureAssistiveAccess��  ��  $ k    1%% &'& q      (( ��)�� 0 ok  ) ��*��  0 ispremavericks isPreMavericks* ��+�� 0 veros verOs+ ��,�� 0 vermajor verMajor, ��-�� 0 verminor verMinor- ����� 0 btn  �  ' ./. l     �~01�~  0 0 * Determine if access is currently enabled.   1 �22 T   D e t e r m i n e   i f   a c c e s s   i s   c u r r e n t l y   e n a b l e d ./ 343 O    
565 r    	787 1    �}
�} 
uien8 o      �|�| 0 ok  6 m     99�                                                                                  sevs  alis    �  Macintosh HD               ��{�H+  p��System Events.app                                              tw{�A��        ����  	                CoreServices    ����      �A�9    p��p��p��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  4 :;: Z   <=�{�z< H    >> o    �y�y 0 ok  = k   ?? @A@ l   �xBC�x  B ) # See if we're running 10.8 or below   C �DD F   S e e   i f   w e ' r e   r u n n i n g   1 0 . 8   o r   b e l o wA EFE r    )GHG J    II JKJ n   LML 1    �w
�w 
txdlM 1    �v
�v 
ascrK N�uN J    OO P�tP m    QQ �RR  .�t  �u  H J      SS TUT o      �s�s 0 orgtids orgTIDsU V�rV n     WXW 1   % '�q
�q 
txdlX 1   $ %�p
�p 
ascr�r  F YZY r   * 3[\[ n   * 1]^] 1   / 1�o
�o 
sisv^ l  * /_�n�m_ I  * /�l�k�j
�l .sysosigtsirr   ��� null�k  �j  �n  �m  \ o      �i�i 0 veros verOsZ `a` r   4 <bcb c   4 :ded n   4 8fgf 4  5 8�hh
�h 
citmh m   6 7�g�g g o   4 5�f�f 0 veros verOse m   8 9�e
�e 
nmbrc o      �d�d 0 vermajor verMajora iji r   = Eklk c   = Cmnm n   = Aopo 4  > A�cq
�c 
citmq m   ? @�b�b p o   = >�a�a 0 veros verOsn m   A B�`
�` 
nmbrl o      �_�_ 0 verminor verMinorj rsr r   F Ktut o   F G�^�^ 0 orgtids orgTIDsu n     vwv 1   H J�]
�] 
txdlw 1   G H�\
�\ 
ascrs xyx r   L Yz{z F   L W|}| B   L O~~ o   L M�[�[ 0 vermajor verMajor m   M N�Z�Z 
} A   R U��� o   R S�Y�Y 0 verminor verMinor� m   S T�X�X 	{ o      �W�W  0 ispremavericks isPreMavericksy ��V� Z   Z���U�� o   Z [�T�T  0 ispremavericks isPreMavericks� l  ^ z���� Q   ^ z���S� k   a q�� ��� l  a a�R���R  � O I Try to turn it on - will prompt for authorization via admin credentials.   � ��� �   T r y   t o   t u r n   i t   o n   -   w i l l   p r o m p t   f o r   a u t h o r i z a t i o n   v i a   a d m i n   c r e d e n t i a l s .� ��Q� O   a q��� k   e p�� ��� r   e j��� m   e f�P
�P boovtrue� 1   f i�O
�O 
uien� ��N� l  k p���� r   k p��� 1   k n�M
�M 
uien� o      �L�L 0 ok  � = 7 Check if the user actually provided the authorization.   � ��� n   C h e c k   i f   t h e   u s e r   a c t u a l l y   p r o v i d e d   t h e   a u t h o r i z a t i o n .�N  � m   a b���                                                                                  sevs  alis    �  Macintosh HD               ��{�H+  p��System Events.app                                              tw{�A��        ����  	                CoreServices    ����      �A�9    p��p��p��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �Q  � R      �K�J�I
�K .ascrerr ****      � ****�J  �I  �S  � U O 10.8-: we can try to turn it on ourselves, which will prompt for authorization   � ��� �   1 0 . 8 - :   w e   c a n   t r y   t o   t u r n   i t   o n   o u r s e l v e s ,   w h i c h   w i l l   p r o m p t   f o r   a u t h o r i z a t i o n�U  � l  }���� k   }�� ��� l  } }�H���H  � a [ Try a dummy GUI scripting operation - which we know will fail - in the hope that this will   � ��� �   T r y   a   d u m m y   G U I   s c r i p t i n g   o p e r a t i o n   -   w h i c h   w e   k n o w   w i l l   f a i l   -   i n   t h e   h o p e   t h a t   t h i s   w i l l� ��� l  } }�G���G  � k e get the app at hand registered in System Preferences > Security & Privacy > Privacy > Accessibility.   � ��� �   g e t   t h e   a p p   a t   h a n d   r e g i s t e r e d   i n   S y s t e m   P r e f e r e n c e s   >   S e c u r i t y   &   P r i v a c y   >   P r i v a c y   >   A c c e s s i b i l i t y .� ��� l  } }�F���F  �   ?? Does this work?   � ��� &   ? ?   D o e s   t h i s   w o r k ?� ��� Q   } ����E� O  � ���� n   � ���� 2  � ��D
�D 
cwin� 4   � ��C�
�C 
prcs� m   � ��� ���  S y s t e m U I S e r v e r� m   � ����                                                                                  sevs  alis    �  Macintosh HD               ��{�H+  p��System Events.app                                              tw{�A��        ����  	                CoreServices    ����      �A�9    p��p��p��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � R      �B�A�@
�B .ascrerr ****      � ****�A  �@  �E  � ��� r   � ���� n   � ���� 1   � ��?
�? 
pnam� m   � ��>
�> misccura� o      �=�= 0 appname appName� ��� l  � ����� Z  � ����<�;� =   � ���� o   � ��:�: 0 appname appName� m   � ��� ���  o s a s c r i p t� r   � ���� m   � ��� ���  T e r m i n a l� o      �9�9 0 appname appName�<  �;  � R L ?? how can we deal with other apps that invoke `osascript`, such as Alfred?   � ��� �   ? ?   h o w   c a n   w e   d e a l   w i t h   o t h e r   a p p s   t h a t   i n v o k e   ` o s a s c r i p t ` ,   s u c h   a s   A l f r e d ?� ��� r   � ���� b   � ���� b   � ���� m   � ��� ��� ~ Y o u   m u s t   t u r n   o n   A C C E S S   F O R   A S S I S T I V E   D E V I C E S   f o r   a p p l i c a t i o n   '� o   � ��8�8 0 appname appName� m   � ��� ��� � '   ( S y s t e m   P r e f e r e n c e s   >   S e c u r i t y   &   P r i v a c y   >   P r i v a c y   >   A c c e s s i b i l i t y )   f i r s t ,   t h e n   r e t r y .� o      �7�7 0 errmsg errMsg� ��� Q   ����6� k   ��� ��� I  � ��5��
�5 .sysodlogaskr        TEXT� b   � ���� b   � ���� b   � ���� o   � ��4�4 0 errmsg errMsg� 1   � ��3
�3 
lnfd� 1   � ��2
�2 
lnfd� m   � ��� ��� � P r e s s   O K   t o   o p e n   S y s t e m   P r e f e r e n c e s   n o w ;   u n l o c k ,   i f   n e c e s s a r y ,   t h e n   l o c a t e   t h e   a p p l i c a t i o n   i n   t h e   l i s t   a n d   c h e c k   i t .� �1��0
�1 
disp� m   � ��/
�/ stic   �0  � ��� l  � ��.���.  � 2 , We only get here if the user didn't cancel.   � ��� X   W e   o n l y   g e t   h e r e   i f   t h e   u s e r   d i d n ' t   c a n c e l .� ��� l  � ��-���-  � � � Open System Preferences and show the appropriate pane. (This is the best we can do in guiding the user - further guidance would require the very kind of assistive access we're trying to turn on.)   � ����   O p e n   S y s t e m   P r e f e r e n c e s   a n d   s h o w   t h e   a p p r o p r i a t e   p a n e .   ( T h i s   i s   t h e   b e s t   w e   c a n   d o   i n   g u i d i n g   t h e   u s e r   -   f u r t h e r   g u i d a n c e   w o u l d   r e q u i r e   t h e   v e r y   k i n d   o f   a s s i s t i v e   a c c e s s   w e ' r e   t r y i n g   t o   t u r n   o n . )� ��,� O   �   k   �  I  � ��+�*�)
�+ .miscactvnull��� ��� null�*  �)   �( O   � I  ��'�&
�' .miscmvisnull���     **** 4   � ��%	
�% 
xppa	 m   � �

 � " P r i v a c y _ A s s i s t i v e�&   5   � ��$�#
�$ 
xppb m   � � � : c o m . a p p l e . p r e f e r e n c e . s e c u r i t y
�# kfrmID  �(   m   � ��                                                                                  sprf  alis    ~  Macintosh HD               ��{�H+  p��System Preferences.app                                         t~t�?F        ����  	                Applications    ����      �?E�    p��  1Macintosh HD:Applications: System Preferences.app   .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  #Applications/System Preferences.app   / ��  �,  � R      �"�!� 
�" .ascrerr ****      � ****�!  �   �6  � � l ��   g a We must return false, as we can't easily and reliably wait for the user to finish the operation.    � �   W e   m u s t   r e t u r n   f a l s e ,   a s   w e   c a n ' t   e a s i l y   a n d   r e l i a b l y   w a i t   f o r   t h e   u s e r   t o   f i n i s h   t h e   o p e r a t i o n .�  � f ` 10.9+: we cannot turn it on ourselves, it has to be enabled *interactively*, *per application*.   � � �   1 0 . 9 + :   w e   c a n n o t   t u r n   i t   o n   o u r s e l v e s ,   i t   h a s   t o   b e   e n a b l e d   * i n t e r a c t i v e l y * ,   * p e r   a p p l i c a t i o n * .�V  �{  �z  ; � Z  1� H   o  �� 0 ok   k  ,  Z  '�� o  ��  0 ispremavericks isPreMavericks l # ! r  #"#" m  !$$ �%% Y o u   m u s t   t u r n   o n   A C C E S S   F O R   A S S I S T I V E   D E V I C E S   f i r s t ,   v i a   S y s t e m   P r e f e r e n c e s   >   A c c e s s i b i l i t y   >   E n a b l e   a c c e s s   f o r   a s s i s t i v e   d e v i c e s# o      �� 0 errmsg errMsg  d ^ This indicates that the authorization prompt was aborted; for 10.9+, errMsg was set above.			   ! �&& �   T h i s   i n d i c a t e s   t h a t   t h e   a u t h o r i z a t i o n   p r o m p t   w a s   a b o r t e d ;   f o r   1 0 . 9 + ,   e r r M s g   w a s   s e t   a b o v e . 	 	 	�  �   '�' R  (,�(�
� .ascrerr ****      � ****( o  *+�� 0 errmsg errMsg�  �  �   L  /1)) m  /0�
� boovtrue�  " *�* l     ����  �  �  �       
�+,-�./0��
�  + �	��������	 .0 ensureassistiveaccess ensureAssistiveAccess
� .aevtoappnull  �   � ****� 0 
simsubmenu 
simSubMenu� 
0 output  � 0 pageurl pageUrl� 	0 props  �  �  , �$� ��12��� .0 ensureassistiveaccess ensureAssistiveAccess�   ��  1 	�������������������� 0 ok  ��  0 ispremavericks isPreMavericks�� 0 veros verOs�� 0 vermajor verMajor�� 0 verminor verMinor�� 0 btn  �� 0 orgtids orgTIDs�� 0 appname appName�� 0 errmsg errMsg2 &9������Q��������������������������������������������������
��$
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
a %E�Y hO)j�Y e- ��3����45��
�� .aevtoappnull  �   � ****3 k     �66  77  88   ����  ��  ��  4 ������ 0 i  �� 0 itm  5 "�� �� ��� ���������������9�� � ����� h���������������� ��� � ��� ��� .0 ensureassistiveaccess ensureAssistiveAccess
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
menI9  
�� 
pnam
�� .coredoexnull���     ****
�� .prcsclicnull��� ��� uiel�� 
0 output  �� 0 pageurl pageUrl
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pALL�� 	0 props  
�� 
help
�� 
bool
�� .sysodelanull��� ��� nmbr�� �)j+  O� *j UO� �*��/ ��E�O �k�kh  *�k/��/�k/�[[�,\Z�@\[�,\Za @B1 �*j  {*j Oa E` O�E` O \*�,�-[a a l kh �a ,E` O_ a ,E` O_ �	 _ a a & _ _ %a %E` Y h[OY��O_ Y hUOa j  [OY�MOPUO)ja !OPU
� 
msng. �::� h t t p : / / l o c a l h o s t / a p p g y v e r / c o n t e x t m e n u / c o n t e x t m e n u . h t m l 
 f i l e : / / / U s e r s / m k l e m e n t / L i b r a r y / A p p l i c a t i o n % 2 0 S u p p o r t / i P h o n e % 2 0 S i m u l a t o r / 7 . 0 . 3 / A p p l i c a t i o n s / 9 E 9 B E 7 1 F - A A 1 2 - 4 2 E 8 - B D 4 7 - C 8 F D 8 7 0 1 5 E 0 4 / D o c u m e n t s / a p p l i c a t i o n s / l o c a l / 1 3 8 3 7 9 3 2 9 4 0 0 0 / m a i n . h t m l 
/ �;;h f i l e : / / / U s e r s / m k l e m e n t / L i b r a r y / A p p l i c a t i o n % 2 0 S u p p o r t / i P h o n e % 2 0 S i m u l a t o r / 7 . 0 . 3 / A p p l i c a t i o n s / 9 E 9 B E 7 1 F - A A 1 2 - 4 2 E 8 - B D 4 7 - C 8 F D 8 7 0 1 5 E 0 4 / D o c u m e n t s / a p p l i c a t i o n s / l o c a l / 1 3 8 3 7 9 3 2 9 4 0 0 0 / m a i n . h t m l0 ����<
�� 
minW
�� 
msng< ����=
�� 
orie
�� 
msng= ��>?
�� 
posn> ��@�� @  ������  �� 9? ����A
�� 
pcls
�� 
menIA ��BC
�� 
roldB �DD  m e n u   i t e mC ����E
�� 
axds
�� 
msngE ����F
�� 
focu
�� 
msngF ��GH
�� 
titlG �II  m a i n . h t m lH ��JK
�� 
ptszJ ��L�� L  �������� K ����M
�� 
valL
�� 
msngM ��/N
�� 
helpN ����O
�� 
enaB
�� boovtrueO ����P
�� 
maxV
�� 
msngP ��QR
�� 
roleQ �SS  A X M e n u I t e mR ��TU
�� 
ectsT ��V��  V   U ����W
�� 
sbrl
�� 
msngW ����X
�� 
selE
�� boovfalsX ��YZ
�� 
pnamY �[[  m a i n . h t m lZ ��\��
�� 
desc\ �]]  m e n u   i t e m��  �  �
  ascr  ��ޭ