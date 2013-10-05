.class Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLShootAndShareSettingMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;


# direct methods
.method private constructor <init>(Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;-><init>(Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;->mResource:Lcom/android/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;->access$100(Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/android/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 7
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;->mResource:Lcom/android/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;->access$100(Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/android/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/android/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    .line 131
    .local v4, itemData:Lcom/android/camera/resourcedata/MenuResourceBundle;
    const/4 v1, 0x4

    invoke-virtual {v4, v1}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;

    #getter for: Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v2}, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;->access$200(Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;

    #getter for: Lcom/android/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v3}, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;->access$300(Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;

    #getter for: Lcom/android/camera/MenuBase;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;
    invoke-static {v6}, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;->access$400(Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/android/camera/MenuResourceDepot;

    move-result-object v6

    invoke-static {v1, v2, v3, v6}, Lcom/android/camera/command/CommandBuilder;->buildCommand(ILcom/android/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;)Lcom/android/camera/command/MenuCommand;

    move-result-object v5

    .line 132
    .local v5, command:Lcom/android/camera/command/MenuCommand;
    if-eqz v5, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;

    invoke-virtual {v1}, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1}, Lcom/android/camera/command/MenuCommand;->setZOrder(I)V

    .line 135
    :cond_0
    if-nez p2, :cond_2

    .line 137
    new-instance v0, Lcom/android/camera/glwidget/TwGLSNSSettingItem;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;

    #getter for: Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;->access$500(Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;->access$600()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;->access$700()I

    move-result v3

    int-to-float v3, v3

    if-nez p1, :cond_1

    const/4 v6, 0x0

    :goto_0
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/glwidget/TwGLSNSSettingItem;-><init>(Lcom/android/camera/AbstractCameraActivity;FFLcom/android/camera/resourcedata/MenuResourceBundle;Lcom/android/camera/command/MenuCommand;I)V

    .line 138
    .local v0, item:Lcom/android/camera/glwidget/TwGLSNSSettingItem;
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;->access$800(Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLSNSSettingItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 139
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;

    invoke-virtual {v1}, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLSNSSettingItem;->setZOrder(I)V

    .line 142
    .end local v0           #item:Lcom/android/camera/glwidget/TwGLSNSSettingItem;
    :goto_1
    return-object v0

    .line 137
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 142
    goto :goto_1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method
