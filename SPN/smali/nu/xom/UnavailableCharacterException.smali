.class public Lnu/xom/UnavailableCharacterException;
.super Lnu/xom/XMLException;


# static fields
.field private static final serialVersionUID:J = -0x72ebb63d5ba4bfbeL


# instance fields
.field private final encoding:Ljava/lang/String;

.field private final unavailableCharacter:C


# direct methods
.method public constructor <init>(CLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Cannot use the character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " (&#x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";) in the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " encoding."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    iput-char p1, p0, Lnu/xom/UnavailableCharacterException;->unavailableCharacter:C

    iput-object p2, p0, Lnu/xom/UnavailableCharacterException;->encoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharacter()C
    .locals 1

    iget-char v0, p0, Lnu/xom/UnavailableCharacterException;->unavailableCharacter:C

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/UnavailableCharacterException;->encoding:Ljava/lang/String;

    return-object v0
.end method
