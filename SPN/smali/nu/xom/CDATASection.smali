.class Lnu/xom/CDATASection;
.super Lnu/xom/Text;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/Text;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lnu/xom/Text;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/Text;-><init>(Lnu/xom/Text;)V

    return-void
.end method

.method static build(Ljava/lang/String;)Lnu/xom/Text;
    .locals 1

    new-instance v0, Lnu/xom/CDATASection;

    invoke-direct {v0, p0}, Lnu/xom/CDATASection;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method escapeText()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lnu/xom/CDATASection;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-super {p0}, Lnu/xom/Text;->escapeText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<![CDATA["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method isCDATASection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
