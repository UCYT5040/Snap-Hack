.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$45;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->PopUp()V
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
    .line 2094
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$45;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$45;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->reassignBots()V

    .line 2098
    return-void
.end method
