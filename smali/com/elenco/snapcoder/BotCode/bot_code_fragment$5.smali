.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$5;
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
    .line 231
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$5;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$5;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-static {v0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->access$300(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    .line 235
    return-void
.end method
