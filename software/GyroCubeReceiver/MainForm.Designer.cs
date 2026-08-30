namespace GyroCubeReceiver
{
    partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }

            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.cbPortName = new System.Windows.Forms.ComboBox();
            this.btnConnect = new System.Windows.Forms.Button();
            this.nudUDPServerRecieverPort = new System.Windows.Forms.NumericUpDown();
            this.btnStartUDPServerReciever = new System.Windows.Forms.Button();
            this.pbCube3D = new System.Windows.Forms.PictureBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.lvGyroCubeList = new System.Windows.Forms.ListView();
            ((System.ComponentModel.ISupportInitialize)(this.nudUDPServerRecieverPort)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbCube3D)).BeginInit();
            this.SuspendLayout();
            // 
            // cbPortName
            // 
            this.cbPortName.Enabled = false;
            this.cbPortName.FormattingEnabled = true;
            this.cbPortName.Location = new System.Drawing.Point(14, 12);
            this.cbPortName.Name = "cbPortName";
            this.cbPortName.Size = new System.Drawing.Size(121, 21);
            this.cbPortName.TabIndex = 0;
            this.cbPortName.Text = "Select Port Name";
            // 
            // btnConnect
            // 
            this.btnConnect.Enabled = false;
            this.btnConnect.Location = new System.Drawing.Point(141, 7);
            this.btnConnect.Name = "btnConnect";
            this.btnConnect.Size = new System.Drawing.Size(95, 29);
            this.btnConnect.TabIndex = 5;
            this.btnConnect.Text = "Connect";
            this.btnConnect.UseVisualStyleBackColor = true;
            this.btnConnect.Click += new System.EventHandler(this.btnConnect_Click);
            // 
            // nudUDPServerRecieverPort
            // 
            this.nudUDPServerRecieverPort.Location = new System.Drawing.Point(241, 13);
            this.nudUDPServerRecieverPort.Margin = new System.Windows.Forms.Padding(2);
            this.nudUDPServerRecieverPort.Maximum = new decimal(new int[] {
            9999,
            0,
            0,
            0});
            this.nudUDPServerRecieverPort.Name = "nudUDPServerRecieverPort";
            this.nudUDPServerRecieverPort.Size = new System.Drawing.Size(62, 20);
            this.nudUDPServerRecieverPort.TabIndex = 58;
            this.nudUDPServerRecieverPort.Value = new decimal(new int[] {
            7755,
            0,
            0,
            0});
            // 
            // btnStartUDPServerReciever
            // 
            this.btnStartUDPServerReciever.Location = new System.Drawing.Point(307, 7);
            this.btnStartUDPServerReciever.Margin = new System.Windows.Forms.Padding(2);
            this.btnStartUDPServerReciever.Name = "btnStartUDPServerReciever";
            this.btnStartUDPServerReciever.Size = new System.Drawing.Size(67, 29);
            this.btnStartUDPServerReciever.TabIndex = 1;
            this.btnStartUDPServerReciever.Text = "Start ";
            this.btnStartUDPServerReciever.UseVisualStyleBackColor = true;
            this.btnStartUDPServerReciever.Click += new System.EventHandler(this.btnStartUDPServer_Click);
            // 
            // pbCube3D
            // 
            this.pbCube3D.Location = new System.Drawing.Point(14, 44);
            this.pbCube3D.Name = "pbCube3D";
            this.pbCube3D.Size = new System.Drawing.Size(360, 360);
            this.pbCube3D.TabIndex = 15;
            this.pbCube3D.TabStop = false;
            // 
            // textBox1
            // 
            this.textBox1.Enabled = false;
            this.textBox1.Location = new System.Drawing.Point(14, 421);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(360, 20);
            this.textBox1.TabIndex = 61;
            // 
            // lvGyroCubeList
            // 
            this.lvGyroCubeList.HideSelection = false;
            this.lvGyroCubeList.Location = new System.Drawing.Point(379, 8);
            this.lvGyroCubeList.MultiSelect = false;
            this.lvGyroCubeList.Name = "lvGyroCubeList";
            this.lvGyroCubeList.Size = new System.Drawing.Size(227, 433);
            this.lvGyroCubeList.TabIndex = 62;
            this.lvGyroCubeList.UseCompatibleStateImageBehavior = false;
            this.lvGyroCubeList.View = System.Windows.Forms.View.List;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(620, 457);
            this.Controls.Add(this.lvGyroCubeList);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.nudUDPServerRecieverPort);
            this.Controls.Add(this.btnStartUDPServerReciever);
            this.Controls.Add(this.pbCube3D);
            this.Controls.Add(this.cbPortName);
            this.Controls.Add(this.btnConnect);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Name = "MainForm";
            this.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Show;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Gyro Cube Receiver";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            ((System.ComponentModel.ISupportInitialize)(this.nudUDPServerRecieverPort)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbCube3D)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.ComboBox cbPortName;
        private System.Windows.Forms.Button btnConnect;
        private System.Windows.Forms.Button btnStartUDPServerReciever;
        private System.Windows.Forms.NumericUpDown nudUDPServerRecieverPort;
        private System.Windows.Forms.PictureBox pbCube3D;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.ListView lvGyroCubeList;
    }
}


