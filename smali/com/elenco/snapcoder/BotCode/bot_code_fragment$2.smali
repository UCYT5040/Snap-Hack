.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$2;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    new-instance v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$autoSave;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$autoSave;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Lcom/elenco/snapcoder/BotCode/bot_code_fragment$1;)V

    invoke-virtual {v0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$autoSave;->checkSave()V

    .line 149
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->RunProgram()V

    .line 150
    return-void
.end method
