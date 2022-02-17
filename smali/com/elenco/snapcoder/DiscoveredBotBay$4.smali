.class Lcom/elenco/snapcoder/DiscoveredBotBay$4;
.super Ljava/lang/Object;
.source "DiscoveredBotBay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/DiscoveredBotBay;->removeBots(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/DiscoveredBotBay;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/DiscoveredBotBay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/DiscoveredBotBay;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$4;->this$0:Lcom/elenco/snapcoder/DiscoveredBotBay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 276
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    const v3, 0x7f0800db

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 277
    .local v1, "driveButton":Landroid/widget/ImageButton;
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 279
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    const v3, 0x7f08009c

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 280
    .local v0, "codeButton":Landroid/widget/ImageButton;
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 281
    return-void
.end method
