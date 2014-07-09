.class public Lcom/android/mms/theos0o/GsmEncoding;
.super Ljava/lang/Object;
.source "GsmEncoding.java"


# static fields
.field private static gsm:Ljava/lang/String;

.field private static unicode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-string v0, "\u03b1\u03b2\u03b3\u03b4\u03b5\u03b6\u03b7\u03b8\u03b9\u03ba\u03bb\u03bc\u03bd\u03be\u03bf\u03c0\u03c1\u03c3\u03c2\u03c4\u03c5\u03c6\u03c7\u03c8\u03c9\u03ac\u03ad\u03ae\u03af\u03cc\u03cd\u03ce\u03ca\u03cb\u0390\u03b0\u0391\u0392\u0395\u0396\u0397\u0399\u039a\u039c\u039d\u039f\u03a1\u03a4\u03a5\u03a7\u0386\u0388\u0389\u038a\u038c\u038f\u03aa\u03ab\u0170\u0171\u0150\u0151\u0105\u0107\u0119\u0142\u0144\u015b\u017a\u017c\u0104\u0106\u0118\u0141\u0143\u015a\u0179\u017b\u00c0\u00c2\u00c3\u00c8\u00ca\u00cc\u00ce\u00d2\u00d5\u00d9\u00db\u00e2\u00e3\u00ea\u00ee\u00f5\u00fa\u00fb\u00e7\u011b\u0161\u010d\u0159\u017e\u010f\u0165\u0148\u00e1\u00ed\u00e9\u00f3\u00fd\u016f\u011a\u0160\u010c\u0158\u017d\u010e\u0164\u0147\u00c1\u00c9\u00cd\u00d3\u00dd\u00da\u016e\u0155\u013a\u013e\u00f4\u0154\u0139\u013d\u00d4\u00cf\u00ef\u00eb\u00cb\u00f1\u00d1"

    sput-object v0, Lcom/android/mms/theos0o/GsmEncoding;->unicode:Ljava/lang/String;

    .line 12
    const-string v0, "AB\u0393\u0394EZH\u0398IK\u039bMN\u039eO\u03a0P\u03a3\u03a3TY\u03a6X\u03a8\u03a9AEHIOY\u03a9IYIYABEZHIKMNOPTYXAEHIO\u03a9IY\u00dc\u00fc\u00d6\u00f6acelnszzACELNSZZAAAEEIIOOUUaaeiouucescrzdtnaieoyuESCRZDTNAEIOYUUrlloRLLOIIeenN"

    sput-object v0, Lcom/android/mms/theos0o/GsmEncoding;->gsm:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static seqToGSM(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "seq"

    .prologue
    .line 35
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/theos0o/GsmEncoding;->textToGSM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static textToGSM(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "text"

    .prologue
    .line 22
    move-object v2, p0

    .line 23
    .local v2, result:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 29
    const-string v3, "\u0110"

    const-string v4, "Dj"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 30
    const-string v3, "\u0111"

    const-string v4, "dj"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 31
    return-object v2

    .line 23
    :cond_0
    aget-char v0, v4, v3

    .line 24
    .local v0, c:C
    sget-object v6, Lcom/android/mms/theos0o/GsmEncoding;->unicode:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 25
    .local v1, index:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 26
    sget-object v6, Lcom/android/mms/theos0o/GsmEncoding;->gsm:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 23
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
