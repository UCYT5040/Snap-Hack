.class Lcom/elenco/snapcoder/BotCode/botEditFragment$1;
.super Ljava/lang/Object;
.source "botEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/botEditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/botEditFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/botEditFragment;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$1;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$1;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    invoke-static {v0}, Lcom/elenco/snapcoder/BotCode/botEditFragment;->access$000(Lcom/elenco/snapcoder/BotCode/botEditFragment;)V

    .line 69
    return-void
.end method
