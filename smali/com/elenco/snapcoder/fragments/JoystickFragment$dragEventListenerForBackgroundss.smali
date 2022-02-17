.class Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;
.super Ljava/lang/Object;
.source "JoystickFragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/fragments/JoystickFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dragEventListenerForBackgroundss"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;


# direct methods
.method private constructor <init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/elenco/snapcoder/fragments/JoystickFragment;
    .param p2, "x1"    # Lcom/elenco/snapcoder/fragments/JoystickFragment$1;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->joystick:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 130
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    const-string v1, "Center"

    invoke-static {v0, v1}, Lcom/elenco/snapcoder/fragments/JoystickFragment;->access$102(Lcom/elenco/snapcoder/fragments/JoystickFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 134
    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 186
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 137
    :sswitch_0
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    invoke-static {v0}, Lcom/elenco/snapcoder/fragments/JoystickFragment;->access$100(Lcom/elenco/snapcoder/fragments/JoystickFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpinLeft"

    if-eq v0, v1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    const-string v1, "SpinLeft"

    invoke-static {v0, v1}, Lcom/elenco/snapcoder/fragments/JoystickFragment;->access$102(Lcom/elenco/snapcoder/fragments/JoystickFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->turnBotsPowerLeft()V

    goto :goto_0

    .line 143
    :sswitch_1
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    invoke-static {v0}, Lcom/elenco/snapcoder/fragments/JoystickFragment;->access$100(Lcom/elenco/snapcoder/fragments/JoystickFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpinRight"

    if-eq v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    const-string v1, "SpinRight"

    invoke-static {v0, v1}, Lcom/elenco/snapcoder/fragments/JoystickFragment;->access$102(Lcom/elenco/snapcoder/fragments/JoystickFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->turnBotsPowerRight()V

    goto :goto_0

    .line 150
    :sswitch_2
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    invoke-static {v0}, Lcom/elenco/snapcoder/fragments/JoystickFragment;->access$100(Lcom/elenco/snapcoder/fragments/JoystickFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TurnLeft"

    if-eq v0, v1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    const-string v1, "TurnLeft"

    invoke-static {v0, v1}, Lcom/elenco/snapcoder/fragments/JoystickFragment;->access$102(Lcom/elenco/snapcoder/fragments/JoystickFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->moveBotsLeft()V

    goto :goto_0

    .line 157
    :sswitch_3
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    invoke-static {v0}, Lcom/elenco/snapcoder/fragments/JoystickFragment;->access$100(Lcom/elenco/snapcoder/fragments/JoystickFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TurnRight"

    if-eq v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    const-string v1, "TurnRight"

    invoke-static {v0, v1}, Lcom/elenco/snapcoder/fragments/JoystickFragment;->access$102(Lcom/elenco/snapcoder/fragments/JoystickFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->moveBotsRight()V

    goto :goto_0

    .line 165
    :sswitch_4
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    invoke-static {v0}, Lcom/elenco/snapcoder/fragments/JoystickFragment;->access$100(Lcom/elenco/snapcoder/fragments/JoystickFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveForward"

    if-eq v0, v1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    const-string v1, "DriveForward"

    invoke-static {v0, v1}, Lcom/elenco/snapcoder/fragments/JoystickFragment;->access$102(Lcom/elenco/snapcoder/fragments/JoystickFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->moveBotsForward()V

    goto :goto_0

    .line 173
    :sswitch_5
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    invoke-static {v0}, Lcom/elenco/snapcoder/fragments/JoystickFragment;->access$100(Lcom/elenco/snapcoder/fragments/JoystickFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveBackwards"

    if-eq v0, v1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    const-string v1, "DriveBackwards"

    invoke-static {v0, v1}, Lcom/elenco/snapcoder/fragments/JoystickFragment;->access$102(Lcom/elenco/snapcoder/fragments/JoystickFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->moveBotsBackward()V

    goto :goto_0

    .line 179
    :sswitch_6
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    invoke-static {v0}, Lcom/elenco/snapcoder/fragments/JoystickFragment;->access$100(Lcom/elenco/snapcoder/fragments/JoystickFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Center"

    if-eq v0, v1, :cond_1

    .line 180
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 181
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    const-string v1, "Center"

    invoke-static {v0, v1}, Lcom/elenco/snapcoder/fragments/JoystickFragment;->access$102(Lcom/elenco/snapcoder/fragments/JoystickFragment;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08006e -> :sswitch_6
        0x7f080173 -> :sswitch_5
        0x7f080174 -> :sswitch_5
        0x7f080175 -> :sswitch_5
        0x7f080178 -> :sswitch_4
        0x7f080179 -> :sswitch_4
        0x7f08017a -> :sswitch_4
        0x7f08017c -> :sswitch_0
        0x7f08017e -> :sswitch_1
        0x7f080181 -> :sswitch_2
        0x7f080182 -> :sswitch_2
        0x7f080185 -> :sswitch_3
        0x7f080186 -> :sswitch_3
    .end sparse-switch
.end method
