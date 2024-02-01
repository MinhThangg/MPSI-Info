def convertir(s):
    r=0
    
    if s[1] == 'b':
        for i in range(len(s)-2):
            if s[len(s)-i-1] == '1':
                r+=2**i
    
    if s[1] == 'x':
        for i in range(len(s)-2):
            c=s[len(s)-i-1]
            if c in "0123456789":
                a=ord(c)-ord('0')
            elif c in "abcdef":
                a=ord(c)-ord('a')+10
            else:
                a=ord(c)-ord('A')+10
            
            r+=16**i*a
    return r

#print(convertir("0b1111"))
print(convertir("0x1A"))
print(0xDF)
