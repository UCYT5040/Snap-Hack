.class Lcom/elenco/snapcoder/BotCode/EditRoutineFragment$1;
.super Ljava/lang/Object;
.source "EditRoutineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment$1;->this$0:Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment$1;->this$0:Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;

    invoke-static {v0}, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->access$000(Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;)V

    .line 54
    return-void
.end method
