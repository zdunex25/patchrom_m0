.class Landroid/webkit/WebViewClassic$DateTimePicker;
.super Landroid/app/Dialog;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DateTimePicker"
.end annotation


# instance fields
.field private isClear:Z

.field private isTimePickerShown:Z

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mMonth:I

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mYear:I

.field private mdatetime:I

.field private mhour:I

.field private mminute:I

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 5788
    iput-object p1, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    .line 5789
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 5785
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->isClear:Z

    .line 5786
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->isTimePickerShown:Z

    .line 5941
    new-instance v0, Landroid/webkit/WebViewClassic$DateTimePicker$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewClassic$DateTimePicker$1;-><init>(Landroid/webkit/WebViewClassic$DateTimePicker;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 5959
    new-instance v0, Landroid/webkit/WebViewClassic$DateTimePicker$2;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewClassic$DateTimePicker$2;-><init>(Landroid/webkit/WebViewClassic$DateTimePicker;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 5790
    return-void
.end method

.method static synthetic access$3002(Landroid/webkit/WebViewClassic$DateTimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5777
    iput p1, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mYear:I

    return p1
.end method

.method static synthetic access$3102(Landroid/webkit/WebViewClassic$DateTimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5777
    iput p1, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$3202(Landroid/webkit/WebViewClassic$DateTimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5777
    iput p1, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mDay:I

    return p1
.end method

.method static synthetic access$3300(Landroid/webkit/WebViewClassic$DateTimePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5777
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->isClear:Z

    return v0
.end method

.method static synthetic access$3302(Landroid/webkit/WebViewClassic$DateTimePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5777
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->isClear:Z

    return p1
.end method

.method static synthetic access$3400(Landroid/webkit/WebViewClassic$DateTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5777
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$DateTimePicker;->updateDate()V

    return-void
.end method

.method static synthetic access$3502(Landroid/webkit/WebViewClassic$DateTimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5777
    iput p1, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mhour:I

    return p1
.end method

.method static synthetic access$3602(Landroid/webkit/WebViewClassic$DateTimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5777
    iput p1, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mminute:I

    return p1
.end method

.method static synthetic access$3700(Landroid/webkit/WebViewClassic$DateTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5777
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$DateTimePicker;->updateTime()V

    return-void
.end method

.method static synthetic access$3800(Landroid/webkit/WebViewClassic$DateTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5777
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$DateTimePicker;->clear()V

    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 5928
    iget-object v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceText(Ljava/lang/CharSequence;)V

    .line 5929
    return-void
.end method

.method private onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, -0x2

    .line 5974
    packed-switch p1, :pswitch_data_0

    .line 6006
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5976
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mYear:I

    iget v4, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mMonth:I

    iget v5, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mDay:I

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 5977
    .local v0, dpdialog:Landroid/app/DatePickerDialog;
    const-string v2, "Clear"

    new-instance v3, Landroid/webkit/WebViewClassic$DateTimePicker$3;

    invoke-direct {v3, p0}, Landroid/webkit/WebViewClassic$DateTimePicker$3;-><init>(Landroid/webkit/WebViewClassic$DateTimePicker;)V

    invoke-virtual {v0, v7, v2, v3}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 5992
    .end local v0           #dpdialog:Landroid/app/DatePickerDialog;
    :pswitch_1
    new-instance v1, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v4, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mhour:I

    iget v5, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mminute:I

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 5993
    .local v1, tpdialog:Landroid/app/TimePickerDialog;
    const-string v2, "Clear"

    new-instance v3, Landroid/webkit/WebViewClassic$DateTimePicker$4;

    invoke-direct {v3, p0}, Landroid/webkit/WebViewClassic$DateTimePicker$4;-><init>(Landroid/webkit/WebViewClassic$DateTimePicker;)V

    invoke-virtual {v1, v7, v2, v3}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v0, v1

    .line 6004
    goto :goto_0

    .line 5974
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "c"

    .prologue
    .line 5932
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 5933
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 5935
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateDate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5851
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5853
    .local v1, date:Ljava/lang/StringBuilder;
    iget v3, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mMonth:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_1

    .line 5854
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5859
    :goto_0
    iget v3, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mDay:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    .line 5860
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5866
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5870
    .local v2, dt:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3, v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceText(Ljava/lang/CharSequence;)V

    .line 5872
    iget v3, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mdatetime:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->isTimePickerShown:Z

    if-nez v3, :cond_0

    .line 5874
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->isTimePickerShown:Z

    .line 5875
    invoke-direct {p0, v6}, Landroid/webkit/WebViewClassic$DateTimePicker;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 5876
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 5878
    .end local v0           #d:Landroid/app/Dialog;
    :cond_0
    return-void

    .line 5857
    .end local v2           #dt:Ljava/lang/String;
    :cond_1
    iget v3, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mMonth:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    .line 5863
    :cond_2
    iget v3, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mDay:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_1
.end method

.method private updateTime()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5883
    iget v3, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mdatetime:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 5885
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5887
    .local v0, datetime:Ljava/lang/StringBuilder;
    iget v3, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mMonth:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    .line 5888
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5893
    :goto_0
    iget v3, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mDay:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    .line 5894
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5899
    :goto_1
    const-string v3, "T"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mhour:I

    invoke-direct {p0, v4}, Landroid/webkit/WebViewClassic$DateTimePicker;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mminute:I

    invoke-direct {p0, v4}, Landroid/webkit/WebViewClassic$DateTimePicker;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5905
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5909
    .local v1, dt:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceText(Ljava/lang/CharSequence;)V

    .line 5923
    .end local v0           #datetime:Ljava/lang/StringBuilder;
    .end local v1           #dt:Ljava/lang/String;
    :goto_2
    return-void

    .line 5891
    .restart local v0       #datetime:Ljava/lang/StringBuilder;
    :cond_0
    iget v3, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mMonth:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    .line 5897
    :cond_1
    iget v3, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mDay:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_1

    .line 5913
    .end local v0           #datetime:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mhour:I

    invoke-direct {p0, v4}, Landroid/webkit/WebViewClassic$DateTimePicker;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mminute:I

    invoke-direct {p0, v4}, Landroid/webkit/WebViewClassic$DateTimePicker;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5921
    .local v2, time:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3, v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 5795
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 5796
    return-void
.end method

.method public show(ILjava/lang/String;)V
    .locals 11
    .parameter "id"
    .parameter "val"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5800
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 5801
    const-string v6, "-"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5802
    .local v2, dateformat:[Ljava/lang/String;
    aget-object v6, v2, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mYear:I

    .line 5803
    aget-object v6, v2, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mMonth:I

    .line 5804
    aget-object v6, v2, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mDay:I

    .line 5835
    .end local v2           #dateformat:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-ne p1, v10, :cond_5

    .line 5837
    iput v10, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mdatetime:I

    .line 5838
    iput-boolean v8, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->isTimePickerShown:Z

    .line 5839
    invoke-direct {p0, v8}, Landroid/webkit/WebViewClassic$DateTimePicker;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    .line 5840
    .local v1, d:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 5847
    :goto_1
    return-void

    .line 5806
    .end local v1           #d:Landroid/app/Dialog;
    :cond_1
    if-eqz p2, :cond_2

    if-ne p1, v9, :cond_2

    .line 5807
    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5808
    .local v5, timeformat:[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mhour:I

    .line 5809
    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mminute:I

    goto :goto_0

    .line 5811
    .end local v5           #timeformat:[Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_4

    if-ne p1, v10, :cond_4

    .line 5812
    const-string v6, "T"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5813
    .local v3, datetimeformat:[Ljava/lang/String;
    aget-object v6, v3, v8

    if-eqz v6, :cond_3

    .line 5814
    aget-object v6, v3, v8

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5815
    .restart local v2       #dateformat:[Ljava/lang/String;
    aget-object v6, v2, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mYear:I

    .line 5816
    aget-object v6, v2, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mMonth:I

    .line 5817
    aget-object v6, v2, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mDay:I

    .line 5819
    .end local v2           #dateformat:[Ljava/lang/String;
    :cond_3
    aget-object v6, v3, v9

    if-eqz v6, :cond_0

    .line 5820
    aget-object v6, v3, v9

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5821
    .restart local v5       #timeformat:[Ljava/lang/String;
    aget-object v6, v5, v9

    const-string v7, "Z"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5822
    .local v4, time:[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mhour:I

    .line 5823
    aget-object v6, v4, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mminute:I

    goto :goto_0

    .line 5827
    .end local v3           #datetimeformat:[Ljava/lang/String;
    .end local v4           #time:[Ljava/lang/String;
    .end local v5           #timeformat:[Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 5828
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mYear:I

    .line 5829
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mMonth:I

    .line 5830
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mDay:I

    .line 5831
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mhour:I

    .line 5832
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebViewClassic$DateTimePicker;->mminute:I

    goto/16 :goto_0

    .line 5844
    .end local v0           #c:Ljava/util/Calendar;
    :cond_5
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$DateTimePicker;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    .line 5845
    .restart local v1       #d:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method
