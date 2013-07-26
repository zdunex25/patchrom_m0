.class public Lnu/xom/Comment;
.super Lnu/xom/Node;


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnu/xom/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnu/xom/Node;-><init>()V

    invoke-direct {p0, p1}, Lnu/xom/Comment;->_setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnu/xom/Comment;)V
    .locals 1

    invoke-direct {p0}, Lnu/xom/Node;-><init>()V

    iget-object v0, p1, Lnu/xom/Comment;->data:Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/Comment;->data:Ljava/lang/String;

    return-void
.end method

.method private _setValue(Ljava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lnu/xom/Comment;->data:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p1}, Lnu/xom/Verifier;->checkPCDATA(Ljava/lang/String;)V

    const-string v0, "--"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    new-instance v0, Lnu/xom/IllegalDataException;

    const-string v1, "Comment data contains a double hyphen (--)."

    invoke-direct {v0, v1}, Lnu/xom/IllegalDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnu/xom/IllegalDataException;->setData(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_2

    new-instance v0, Lnu/xom/IllegalDataException;

    const-string v1, "Comment data cannot contain carriage returns."

    invoke-direct {v0, v1}, Lnu/xom/IllegalDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnu/xom/IllegalDataException;->setData(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lnu/xom/IllegalDataException;

    const-string v1, "Comment data ends with a hyphen."

    invoke-direct {v0, v1}, Lnu/xom/IllegalDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnu/xom/IllegalDataException;->setData(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method static build(Ljava/lang/String;)Lnu/xom/Comment;
    .locals 1

    new-instance v0, Lnu/xom/Comment;

    invoke-direct {v0}, Lnu/xom/Comment;-><init>()V

    iput-object p0, v0, Lnu/xom/Comment;->data:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public copy()Lnu/xom/Node;
    .locals 2

    new-instance v0, Lnu/xom/Comment;

    iget-object v1, p0, Lnu/xom/Comment;->data:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnu/xom/Comment;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getChild(I)Lnu/xom/Node;
    .locals 2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "LeafNodes do not have children"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/Comment;->data:Ljava/lang/String;

    return-object v0
.end method

.method isComment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/Comment;->_setValue(Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lnu/xom/Comment;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v0}, Lnu/xom/Text;->escapeLineBreaksAndTruncate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnu/xom/Text;->escapeLineBreaksAndTruncate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final toXML()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<!--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnu/xom/Comment;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
