.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$4;
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
    .line 223
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$4;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$4;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->OpenSaveFragment()V

    .line 227
    return-void
.end method
