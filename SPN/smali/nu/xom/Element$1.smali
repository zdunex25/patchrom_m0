.class Lnu/xom/Element$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private next:I

.field private final synthetic this$0:Lnu/xom/Element;


# direct methods
.method constructor <init>(Lnu/xom/Element;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnu/xom/Element$1;->this$0:Lnu/xom/Element;

    const/4 v0, 0x0

    iput v0, p0, Lnu/xom/Element$1;->next:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lnu/xom/Element$1;->next:I

    iget-object v1, p0, Lnu/xom/Element$1;->this$0:Lnu/xom/Element;

    #getter for: Lnu/xom/Element;->numAttributes:I
    invoke-static {v1}, Lnu/xom/Element;->access$000(Lnu/xom/Element;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/Element$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/Element$1;->this$0:Lnu/xom/Element;

    #getter for: Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;
    invoke-static {v0}, Lnu/xom/Element;->access$100(Lnu/xom/Element;)[Lnu/xom/Attribute;

    move-result-object v0

    iget v1, p0, Lnu/xom/Element$1;->next:I

    aget-object v0, v0, v1

    iget v1, p0, Lnu/xom/Element$1;->next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnu/xom/Element$1;->next:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No such attribute"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
