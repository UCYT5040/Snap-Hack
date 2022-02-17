.class Lcom/elenco/snapcoder/fragments/MyBots$6$1;
.super Ljava/lang/Object;
.source "MyBots.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/MyBots$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/MyBots$6;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/MyBots$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/MyBots$6;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/MyBots$6$1;->this$1:Lcom/elenco/snapcoder/fragments/MyBots$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 364
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getBotCustomizationFragment()Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/MyBots$6$1;->this$1:Lcom/elenco/snapcoder/fragments/MyBots$6;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/MyBots$6;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->OpenBotCustomization(Landroid/view/View;)V

    .line 365
    return-void
.end method
