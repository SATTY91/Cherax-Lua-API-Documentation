---@diagnostic disable

---@meta _

---@class ImGui
ImGui = {}

--------------------------------------------------------------
--- Internal
--------------------------------------------------------------

---@param x number
---@param y number
---@param radius number
---@param r integer
---@param g integer
---@param b integer
---@param a integer
---@param numSegments? integer
---@param thickness? number
function ImGui.AddCircle(x, y, radius, r, g, b, a, numSegments, thickness) end

---@param x number
---@param y number
---@param radius number
---@param r integer
---@param g integer
---@param b integer
---@param a integer
---@param numSegments? integer
function ImGui.AddCircleFilled(x, y, radius, r, g, b, a, numSegments) end

--- min and max represent the upper-left and lower-right corners of the rectangle. uv_min and uv_max represent the normalized texture coordinates to use for those corners. Using (0,0)->(1,1) texture coordinates will generally display the entire texture.
---@param texture D3D11SRV
---@param min_x number
---@param min_y number
---@param max_x number
---@param max_y number
---@param uv_min_x? number
---@param uv_min_y? number
---@param uv_max_x? number
---@param uv_max_y? number
---@param color? integer
function ImGui.AddImage(texture, min_x, min_y, max_x, max_y, uv_min_x, uv_min_y, uv_max_x, uv_max_y, color) end

---@param texture D3D11SRV
---@param p1 V2
---@param p2 V2
---@param p3 V2
---@param p4 V2
---@param uv1? V2
---@param uv2? V2
---@param uv3? V2
---@param uv4? V2
---@param alpha? integer
function ImGui.AddImageQuad(texture, p1, p2, p3, p4, uv1, uv2, uv3, uv4, alpha) end

---@param texture D3D11SRV
---@param center_x number
---@param center_y number
---@param width number
---@param height number
---@param angle number
---@param alpha? integer
function ImGui.AddImageRotated(texture, center_x, center_y, width, height, angle, alpha) end

--- Same as AddImage with rounding.
---@param texture D3D11SRV
---@param min_x number
---@param min_y number
---@param max_x number
---@param max_y number
---@param uv_min_x? number
---@param uv_min_y? number
---@param uv_max_x? number
---@param uv_max_y? number
---@param color? integer
---@param rounding? number
function ImGui.AddImageRounded(texture, min_x, min_y, max_x, max_y, uv_min_x, uv_min_y, uv_max_x, uv_max_y, color, rounding) end

---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param r integer
---@param g integer
---@param b integer
---@param a integer
---@param thickness? number
function ImGui.AddLine(x1, y1, x2, y2, r, g, b, a, thickness) end

---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param r integer
---@param g integer
---@param b integer
---@param a integer
---@param rounding? number
---@param drawFlags? integer
---@param thickness? number
function ImGui.AddRect(x1, y1, x2, y2, r, g, b, a, rounding, drawFlags, thickness) end

---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param r integer
---@param g integer
---@param b integer
---@param a integer
---@param rounding? number
---@param drawFlags? integer
function ImGui.AddRectFilled(x1, y1, x2, y2, r, g, b, a, rounding, drawFlags) end

---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param col_upr_left integer
---@param col_upr_right integer
---@param col_bot_right integer
---@param col_bot_left integer
function ImGui.AddRectFilledMultiColor(x1, y1, x2, y2, col_upr_left, col_upr_right, col_bot_right, col_bot_left) end

---@param x number
---@param y number
---@param text string
---@param r integer
---@param g integer
---@param b integer
---@param a integer
function ImGui.AddText(x, y, text, r, g, b, a) end

---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param x3 number
---@param y3 number
---@param r integer
---@param g integer
---@param b integer
---@param a integer
---@param thickness? number
function ImGui.AddTriangle(x1, y1, x2, y2, x3, y3, r, g, b, a, thickness) end

---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param x3 number
---@param y3 number
---@param r integer
---@param g integer
---@param b integer
---@param a integer
function ImGui.AddTriangleFilled(x1, y1, x2, y2, x3, y3, r, g, b, a) end

---@param strId string
---@param columns integer
---@param flags ImGuiTableFlags|integer
---@return boolean
function ImGui.BeginTable(strId, columns, flags) end

--- Converts a float 4 into a packed color.
---@param color number[]
---@return integer
function ImGui.ColorConvertFloat4ToU32(color) end

--- Converts an rgba table to a packed color.
---@param rgba integer[]
---@return integer
function ImGui.ColorConvertRGBAToU32(rgba) end

--- Converts a packed color into a float 4.
---@param color integer
---@return number[]
function ImGui.ColorConvertU32ToFloat4(color) end

function ImGui.EndTable() end

---@return number, number
---@nodiscard
function ImGui.GetDisplaySize() end

---@return number
---@nodiscard
function ImGui.GetFrameRate() end

function ImGui.TableNextRow() end

---@param column integer
---@return boolean
function ImGui.TableSetColumnIndex(column) end

---@param strId string
---@param flags ImGuiTableColumnFlags|integer
function ImGui.TableSetupColumn(strId, flags) end

--------------------------------------------------------------
--- Windows
--------------------------------------------------------------

---@param name string
---@param open? boolean
---@param flags? ImGuiWindowFlags|integer
---@return boolean open, boolean shouldDraw
function ImGui.Begin(name, open, flags) end

function ImGui.End() end

--------------------------------------------------------------
--- Child Windows
--------------------------------------------------------------

---@param name string
---@param size_x? number
---@param size_y? number
---@param border? boolean
---@param flags? ImGuiWindowFlags|integer
---@return boolean shouldDraw
function ImGui.BeginChild(name, size_x, size_y, border , flags) end

function ImGui.EndChild() end

--------------------------------------------------------------
--- Windows Utilities
--------------------------------------------------------------

---@return boolean appearing
---@nodiscard
function ImGui.IsWindowAppearing() end

---@return boolean collapsed
---@nodiscard
function ImGui.IsWindowCollapsed() end

---@param flags? ImGuiFocusedFlags|integer
---@return boolean focused
---@nodiscard
function ImGui.IsWindowFocused(flags) end

---@param flags? ImGuiHoveredFlags|integer
---@return boolean hovered
---@nodiscard
function ImGui.IsWindowHovered(flags) end

---@return number dpiScale
---@nodiscard
function ImGui.GetWindowDpiScale() end

---@return number pos_x, number pos_y
---@nodiscard
function ImGui.GetWindowPos() end

---@return number size_x, number size_y
---@nodiscard
function ImGui.GetWindowSize() end

---@return number width
---@nodiscard
function ImGui.GetWindowWidth() end

---@return number height
---@nodiscard
function ImGui.GetWindowHeight() end

---@param pos_x number
---@param pos_y number
---@param cond? ImGuiCond
---@param pivot_x? number
---@param pivot_y? number
function ImGui.SetNextWindowPos(pos_x, pos_y, cond, pivot_x, pivot_y) end

---@param size_x number
---@param size_y number
---@param cond? ImGuiCond
function ImGui.SetNextWindowSize(size_x, size_y, cond) end

---@param min_x number
---@param min_y number
---@param max_x number
---@param max_y number
function ImGui.SetNextWindowSizeConstraints(min_x, min_y, max_x, max_y) end

---@param size_x number
---@param size_y number
function ImGui.SetNextWindowContentSize(size_x, size_y) end

---@param collapsed boolean
---@param cond? ImGuiCond
function ImGui.SetNextWindowCollapsed(collapsed, cond) end

function ImGui.SetNextWindowFocus() end

---@param alpha number
function ImGui.SetNextWindowBgAlpha(alpha) end

---@param pos_x number
---@param pos_y number
---@param cond? ImGuiCond
function ImGui.SetWindowPos(pos_x, pos_y, cond) end

---@param size_x number
---@param size_y number
---@param cond? ImGuiCond
function ImGui.SetWindowSize(size_x, size_y, cond) end

---@param collapsed boolean
---@param cond? ImGuiCond
function ImGui.SetWindowCollapsed(collapsed, cond) end

function ImGui.SetWindowFocus() end

---@param scale number
function ImGui.SetWindowFontScale(scale) end

---@param name string
---@param pos_x number
---@param pos_y number
---@param cond? ImGuiCond
function ImGui.SetWindowPos(name, pos_x, pos_y, cond) end

---@param name string
---@param size_x number
---@param size_y number
---@param cond? ImGuiCond
function ImGui.SetWindowSize(name, size_x, size_y, cond) end

---@param name string
---@param collapsed boolean
---@param cond? ImGuiCond
function ImGui.SetWindowCollapsed(name, collapsed, cond) end

---@param name string
function ImGui.SetWindowFocus(name) end

--------------------------------------------------------------
--- Content Region
--------------------------------------------------------------

---@return number x, number y
---@nodiscard
function ImGui.GetContentRegionMax() end

---@return number x, number y
---@nodiscard
function ImGui.GetContentRegionAvail() end

---@return number x, number y
---@nodiscard
function ImGui.GetWindowContentRegionMin() end

---@return number x, number y
---@nodiscard
function ImGui.GetWindowContentRegionMax() end

---@return number width
---@nodiscard
function ImGui.GetWindowContentRegionWidth() end

--------------------------------------------------------------
--- Windows Scrolling
--------------------------------------------------------------

---@return number x
---@nodiscard
function ImGui.GetScrollX() end

---@return number y
---@nodiscard
function ImGui.GetScrollY() end

---@return number x
---@nodiscard
function ImGui.GetScrollMaxX() end

---@return number y
---@nodiscard
function ImGui.GetScrollMaxY() end

---@param scroll_x number
function ImGui.SetScrollX(scroll_x) end

---@param scroll_y number
function ImGui.SetScrollY(scroll_y) end

---@param center_x_ratio? number
function ImGui.SetScrollHereX(center_x_ratio) end

---@param center_y_ratio? number
function ImGui.SetScrollHereY(center_y_ratio) end

---@param local_x number
---@param center_x_ratio? number
function ImGui.SetScrollFromPosX(local_x, center_x_ratio) end

---@param local_y number
---@param center_y_ratio? number
function ImGui.SetScrollFromPosY(local_y, center_y_ratio) end

--------------------------------------------------------------
--- Parameters Stacks (Shared)
--------------------------------------------------------------

---@param font ImFont
function ImGui.PushFont(font) end

function ImGui.PopFont() end

---@param idx ImGuiCol
---@param color_r number
---@param color_g number
---@param color_b number
---@param color_a number
function ImGui.PushStyleColor(idx, color_r, color_g, color_b, color_a) end

---@param count? integer
function ImGui.PopStyleColor(count) end

---@overload fun(idx: ImGuiStyleVar, value_x: number, value_y: number)
---@param idx ImGuiStyleVar
---@param value number
function ImGui.PushStyleVar(idx, value) end

---@param count? integer
function ImGui.PopStyleVar(count) end

---@param idx ImGuiCol
---@return number color_r, number color_g, number color_b, number color_a
---@nodiscard
function ImGui.GetStyleColorVec4(idx) end

---@return ImFont font
---@nodiscard
function ImGui.GetFont() end

---@return number fontSize
---@nodiscard
function ImGui.GetFontSize() end

---@return number x, number y
---@nodiscard
function ImGui.GetFontTexUvWhitePixel() end

--------------------------------------------------------------
--- Parameter Stacks (Current Window)
--------------------------------------------------------------

---@param width number
function ImGui.PushItemWidth(width) end

function ImGui.PopItemWidth() end

---@param width number
function ImGui.SetNextItemWidth(width) end

---@return number width
---@nodiscard
function ImGui.CalcItemWidth() end

---@param wrap_local_pos_x? number
function ImGui.PushTextWrapPos(wrap_local_pos_x) end

function ImGui.PopTextWrapPos() end

---@param allow_keyboard_focus boolean
function ImGui.PushAllowKeyboardFocus(allow_keyboard_focus) end

function ImGui.PopAllowKeyboardFocus() end

---@param _repeat boolean
function ImGui.PushButtonRepeat(_repeat) end

function ImGui.PopButtonRepeat() end

--------------------------------------------------------------
--- Cursor / Layout
--------------------------------------------------------------

function ImGui.Separator() end

---@param offset_from_start_x? number
---@param spacing? number
function ImGui.SameLine(offset_from_start_x, spacing) end

function ImGui.NewLine() end

function ImGui.Spacing() end

---@param size_x number
---@param size_y number
function ImGui.Dummy(size_x, size_y) end

---@param indent_w? number
function ImGui.Indent(indent_w) end

---@param indent_w? number
function ImGui.Unindent(indent_w) end

function ImGui.BeginGroup() end

function ImGui.EndGroup() end

---@return number x, number y
---@nodiscard
function ImGui.GetCursorPos() end

---@return number x
---@nodiscard
function ImGui.GetCursorPosX() end

---@return number y
---@nodiscard
function ImGui.GetCursorPosY() end

---@param x number
---@param y number
function ImGui.SetCursorPos(x, y) end

---@param x number
function ImGui.SetCursorPosX(x) end

---@param y number
function ImGui.SetCursorPosY(y) end

---@return number x, number y
---@nodiscard
function ImGui.GetCursorStartPos() end

---@return number x, number y
---@nodiscard
function ImGui.GetCursorScreenPos() end

---@param x number
---@param y number
function ImGui.SetCursorScreenPos(x, y) end

function ImGui.AlignTextToFramePadding() end

---@return number height
---@nodiscard
function ImGui.GetTextLineHeight() end

---@return number height
---@nodiscard
function ImGui.GetTextLineHeightWithSpacing() end

---@return number height
---@nodiscard
function ImGui.GetFrameHeight() end

---@return number height
---@nodiscard
function ImGui.GetFrameHeightWithSpacing() end

--------------------------------------------------------------
--- ID Stack / Scopes
--------------------------------------------------------------

---@overload fun(str_id: string)
---@overload fun(str_id_begin: string, str_id_end: string)
---@param int_id integer
function ImGui.PushID(int_id) end

function ImGui.PopID() end

---@overload fun(str_id_begin: string, str_id_end: string): id: integer
---@param str_id string
---@return integer id
---@nodiscard
function ImGui.GetID(str_id) end

--------------------------------------------------------------
--- Widgets: Text
--------------------------------------------------------------

---@param text string
---@param text_end? string
function ImGui.TextUnformatted(text, text_end) end

---@param text string
function ImGui.Text(text) end

---@param color_r number
---@param color_g number
---@param color_b number
---@param color_a number
---@param text string
function ImGui.TextColored(color_r, color_g, color_b, color_a, text) end

---@param text string
function ImGui.TextDisabled(text) end

---@param text string
function ImGui.TextWrapped(text) end

---@param label string
---@param text string
function ImGui.LabelText(label, text) end

---@param text string
function ImGui.BulletText(text) end

--------------------------------------------------------------
--- Widgets: Main
--------------------------------------------------------------

---@param label string
---@param size_x? number
---@param size_y? number
---@return boolean clicked
function ImGui.Button(label, size_x, size_y) end

---@param label string
---@return boolean clicked
function ImGui.SmallButton(label) end

---@param label string
---@param size_x number
---@param size_y number
---@return boolean clicked
function ImGui.InvisibleButton(label, size_x, size_y) end

---@param str_id string
---@param dir ImGuiDir
---@return boolean clicked
function ImGui.ArrowButton(str_id, dir) end

---@param label string
---@param value boolean
---@return boolean value, boolean pressed
function ImGui.Checkbox(label, value) end

---@overload fun(label: string, value: integer, v_button: integer): value: integer, pressed: boolean
---@param label string
---@param active boolean
---@return boolean pressed
function ImGui.RadioButton(label, active) end

---@param fraction number
---@param size_x? number
---@param size_y? number
---@param overlay? string
function ImGui.ProgressBar(fraction, size_x, size_y, overlay) end

function ImGui.Bullet() end

--------------------------------------------------------------
--- Widgets: Combo Box
--------------------------------------------------------------

---@param label string
---@param previewValue string
---@param flags? ImGuiComboFlags|integer
---@return boolean shouldDraw
function ImGui.BeginCombo(label, previewValue, flags) end

function ImGui.EndCombo() end

---@overload fun(label: string, current_item: integer, items_separated_by_zeros: string, popup_max_height_in_items?: integer): current_item: integer, clicked: boolean
---@param label string
---@param current_item integer
---@param items string[]
---@param items_count integer
---@param popup_max_height_in_items? integer
---@return integer current_item, boolean clicked
function ImGui.Combo(label, current_item, items, items_count, popup_max_height_in_items) end

--------------------------------------------------------------
--- Widgets: Drags
--------------------------------------------------------------

---@param label string
---@param value number
---@param value_speed? number
---@param value_min? number
---@param value_max? number
---@param format? string
---@param power? number
---@return number value, boolean used
function ImGui.DragFloat(label, value, value_speed, value_min, value_max, format, power) end

---@param label string
---@param values table
---@param value_speed? number
---@param value_min? number
---@param value_max? number
---@param format? string
---@param power? number
---@return table values, boolean used
function ImGui.DragFloat2(label, values, value_speed, value_min, value_max, format, power) end

---@param label string
---@param values table
---@param value_speed? number
---@param value_min? number
---@param value_max? number
---@param format? string
---@param power? number
---@return table values, boolean used
function ImGui.DragFloat3(label, values, value_speed, value_min, value_max, format, power) end

---@param label string
---@param values table
---@param value_speed? number
---@param value_min? number
---@param value_max? number
---@param format? string
---@param power? number
---@return table values, boolean used
function ImGui.DragFloat4(label, values, value_speed, value_min, value_max, format, power) end

---@param label string
---@param value integer
---@param value_speed? number
---@param value_min? integer
---@param value_max? integer
---@param format? string
---@return integer value, boolean used
function ImGui.DragInt(label, value, value_speed, value_min, value_max, format) end

---@param label string
---@param values table
---@param value_speed? number
---@param value_min? integer
---@param value_max? integer
---@param format? string
---@return table values, boolean used
function ImGui.DragInt2(label, values, value_speed, value_min, value_max, format) end

---@param label string
---@param values table
---@param value_speed? number
---@param value_min? integer
---@param value_max? integer
---@param format? string
---@return table values, boolean used
function ImGui.DragInt3(label, values, value_speed, value_min, value_max, format) end

---@param label string
---@param values table
---@param value_speed? number
---@param value_min? integer
---@param value_max? integer
---@param format? string
---@return table values, boolean used
function ImGui.DragInt4(label, values, value_speed, value_min, value_max, format) end

--------------------------------------------------------------
--- Widgets: Sliders
--------------------------------------------------------------

---@param label string
---@param value number
---@param value_min number
---@param value_max number
---@param format? string
---@param power? number
---@return number value, boolean used
function ImGui.SliderFloat(label, value, value_min, value_max, format, power) end

---@param label string
---@param values table
---@param value_min number
---@param value_max number
---@param format? string
---@param power? number
---@return table values, boolean used
function ImGui.SliderFloat2(label, values, value_min, value_max, format, power) end

---@param label string
---@param values table
---@param value_min number
---@param value_max number
---@param format? string
---@param power? number
---@return table values, boolean used
function ImGui.SliderFloat3(label, values, value_min, value_max, format, power) end

---@param label string
---@param values table
---@param value_min number
---@param value_max number
---@param format? string
---@param power? number
---@return table values, boolean used
function ImGui.SliderFloat4(label, values, value_min, value_max, format, power) end

---@param label string
---@param v_rad number
---@param v_degrees_min? number
---@param v_degrees_max? number
---@param format? string
---@return number v_rad, boolean used
function ImGui.SliderAngle(label, v_rad, v_degrees_min, v_degrees_max, format) end

---@param label string
---@param value integer
---@param value_min integer
---@param value_max integer
---@param format? string
---@return integer value, boolean used
function ImGui.SliderInt(label, value, value_min, value_max, format) end

---@param label string
---@param values table
---@param value_min integer
---@param value_max integer
---@param format? string
---@return table values, boolean used
function ImGui.SliderInt2(label, values, value_min, value_max, format) end

---@param label string
---@param values table
---@param value_min integer
---@param value_max integer
---@param format? string
---@return table values, boolean used
function ImGui.SliderInt3(label, values, value_min, value_max, format) end

---@param label string
---@param values table
---@param value_min integer
---@param value_max integer
---@param format? string
---@return table values, boolean used
function ImGui.SliderInt4(label, values, value_min, value_max, format) end

---@param label string
---@param size_x number
---@param size_y number
---@param value number
---@param value_min number
---@param value_max number
---@param format? string
---@param power? number
---@return number value, boolean used
function ImGui.VSliderFloat(label, size_x, size_y, value, value_min, value_max, format, power) end

---@param label string
---@param size_x number
---@param size_y number
---@param value integer
---@param value_min integer
---@param value_max integer
---@param format? string
---@return integer value, boolean used
function ImGui.VSliderInt(label, size_x, size_y, value, value_min, value_max, format) end

--------------------------------------------------------------
--- Widgets: Input with Keyboard
--------------------------------------------------------------

---@param label string
---@param text string
---@param flags? ImGuiInputTextFlags|integer
---@return string text, boolean selected
function ImGui.InputText(label, text, flags) end

---@param label string
---@param text string
---@param size_x? number
---@param size_y? number
---@param flags? ImGuiInputTextFlags|integer
---@return string text, boolean selected
function ImGui.InputTextMultiline(label, text, size_x, size_y, flags) end

---@param label string
---@param hint string
---@param text string
---@param flags? ImGuiInputTextFlags|integer
---@return string text, boolean selected
function ImGui.InputTextWithHint(label, hint, text, flags) end

---@param label string
---@param value number
---@param step? number
---@param step_fast? number
---@param format? string
---@param flags? ImGuiInputTextFlags|integer
---@return number value, boolean used
function ImGui.InputFloat(label, value, step, step_fast, format, flags) end

---@param label string
---@param values table
---@param format? string
---@param flags? ImGuiInputTextFlags|integer
---@return table values, boolean used
function ImGui.InputFloat2(label, values, format, flags) end

---@param label string
---@param values table
---@param format? string
---@param flags? ImGuiInputTextFlags|integer
---@return table values, boolean used
function ImGui.InputFloat3(label, values, format, flags) end

---@param label string
---@param values table
---@param format? string
---@param flags? ImGuiInputTextFlags|integer
---@return table values, boolean used
function ImGui.InputFloat4(label, values, format, flags) end

---@param label string
---@param value integer
---@param step? integer
---@param step_fast? integer
---@param flags? ImGuiInputTextFlags|integer
---@return integer value, boolean used
function ImGui.InputInt(label, value, step, step_fast, flags) end

---@param label string
---@param values table
---@param flags? ImGuiInputTextFlags|integer
---@return table values, boolean used
function ImGui.InputInt2(label, values, flags) end

---@param label string
---@param values table
---@param flags? ImGuiInputTextFlags|integer
---@return table values, boolean used
function ImGui.InputInt3(label, values, flags) end

---@param label string
---@param values table
---@param flags? ImGuiInputTextFlags|integer
---@return table values, boolean used
function ImGui.InputInt4(label, values, flags) end

---@param label string
---@param value number
---@param step? number
---@param step_fast? number
---@param format? string
---@param flags? ImGuiInputTextFlags|integer
---@return number value, boolean used
function ImGui.InputDouble(label, value, step, step_fast, format, flags) end

--------------------------------------------------------------
--- Widgets: Color Editor / Picker
--------------------------------------------------------------

---@param label string
---@param col table
---@param flags? ImGuiColorEditFlags|integer
---@return table col, boolean used
function ImGui.ColorEdit3(label, col, flags) end

---@param label string
---@param col table
---@param flags? ImGuiColorEditFlags|integer
---@return table col, boolean used
function ImGui.ColorEdit4(label, col, flags) end

---@param label string
---@param col table
---@param flags? ImGuiColorEditFlags|integer
---@return table col, boolean used
function ImGui.ColorPicker3(label, col, flags) end

---@param label string
---@param col table
---@param flags? ImGuiColorEditFlags|integer
---@return table col, boolean used
function ImGui.ColorPicker4(label, col, flags) end

---@param desc_id string
---@param col table
---@param flags? ImGuiColorEditFlags|integer
---@param size_x? number
---@param size_y? number
---@return boolean pressed
function ImGui.ColorButton(desc_id, col, flags, size_x, size_y) end

---@param flags ImGuiColorEditFlags|integer
function ImGui.SetColorEditOptions(flags) end

--------------------------------------------------------------
--- Widgets: Trees
--------------------------------------------------------------

---@param label string
---@param fmt? string
---@return boolean open
function ImGui.TreeNode(label, fmt) end

---@param label string
---@param flags? ImGuiTreeNodeFlags|integer
---@param fmt? string
---@return boolean open
function ImGui.TreeNodeEx(label, flags, fmt) end

---@param str_id string
function ImGui.TreePush(str_id) end

function ImGui.TreePop() end

---@return number spacing
---@nodiscard
function ImGui.GetTreeNodeToLabelSpacing() end

---@overload fun(label: string, open: boolean, flags?: ImGuiTreeNodeFlags|integer): open: boolean, notCollapsed: boolean
---@param label string
---@param flags? ImGuiTreeNodeFlags|integer
---@return boolean notCollapsed
function ImGui.CollapsingHeader(label, flags) end

---@param open boolean
---@param cond? ImGuiCond
function ImGui.SetNextItemOpen(open, cond) end

--------------------------------------------------------------
--- Widgets: Selectables
--------------------------------------------------------------

---@param label string
---@param selected? boolean
---@param flags? ImGuiSelectableFlags|integer
---@param size_x? number
---@param size_y? number
---@return boolean selected
function ImGui.Selectable(label, selected, flags, size_x, size_y) end

--------------------------------------------------------------
--- Widgets: List Boxes
--------------------------------------------------------------

---@param label string
---@param current_item integer
---@param items table
---@param items_count integer
---@param height_in_items? integer
---@return integer current_item, boolean clicked
function ImGui.ListBox(label, current_item, items, items_count, height_in_items) end

---@overload fun(label: string, items_count: integer, height_in_items?: integer): open: boolean
---@param label string
---@param size_x number
---@param size_y number
---@return boolean open
function ImGui.ListBoxHeader(label, size_x, size_y) end

function ImGui.ListBoxFooter() end

--------------------------------------------------------------
--- Widgets: Value() Helpers
--------------------------------------------------------------

---@param prefix? string
---@param float_format? string
function ImGui.Value(prefix, float_format) end

--------------------------------------------------------------
--- Widgets: Menus
--------------------------------------------------------------

---@return boolean shouldDraw
function ImGui.BeginMenuBar() end

function ImGui.EndMenuBar() end

---@return boolean shouldDraw
function ImGui.BeginMainMenuBar() end

function ImGui.EndMainMenuBar() end

---@param label string
---@param enabled? boolean
---@return boolean shouldDraw
function ImGui.BeginMenu(label, enabled) end

function ImGui.EndMenu() end

---@overload fun(label: string, shortcut: string, selected: boolean): selected: boolean, activated: boolean
---@param label string
---@param shortcut? string
---@return boolean activated
function ImGui.MenuItem(label, shortcut) end

--------------------------------------------------------------
--- Tooltips
--------------------------------------------------------------

function ImGui.BeginTooltip() end

function ImGui.EndTooltip() end

---@param fmt string
function ImGui.SetTooltip(fmt) end

--------------------------------------------------------------
--- Popups, Modals
--------------------------------------------------------------

---@param str_id string
---@param flags? ImGuiWindowFlags|integer
---@return boolean open
function ImGui.BeginPopup(str_id, flags) end

---@param name string
---@param open? boolean
---@param flags? ImGuiWindowFlags|integer
---@return boolean open
function ImGui.BeginPopupModal(name, open, flags) end

function ImGui.EndPopup() end

---@param str_id string
---@param popup_flags ImGuiPopupFlags|integer
function ImGui.OpenPopup(str_id, popup_flags) end

---@param str_id string
---@param popup_flags ImGuiPopupFlags|integer
---@return boolean open
function ImGui.OpenPopupContextItem(str_id, popup_flags) end

function ImGui.CloseCurrentPopup() end

---@param str_id string
---@param popup_flags ImGuiPopupFlags|integer
---@return boolean open
function ImGui.BeginPopupContextItem(str_id, popup_flags) end

---@param str_id string
---@param popup_flags ImGuiPopupFlags|integer
---@return boolean open
function ImGui.BeginPopupContextWindow(str_id, popup_flags) end

---@param str_id string
---@param popup_flags ImGuiPopupFlags|integer
---@return boolean open
function ImGui.BeginPopupContextVoid(str_id, popup_flags) end

---@param str_id string
---@param popup_flags ImGuiPopupFlags|integer
---@return boolean
---@nodiscard
function ImGui.IsPopupOpen(str_id, popup_flags) end

--------------------------------------------------------------
--- Columns
--------------------------------------------------------------

---@param count? integer
---@param id? string
---@param border? boolean
function ImGui.Columns(count, id, border) end

function ImGui.NextColumn() end

---@return integer index
---@nodiscard
function ImGui.GetColumnIndex() end

---@param column_index? integer
---@return number width
---@nodiscard
function ImGui.GetColumnWidth(column_index) end

---@param column_index integer
---@param width number
function ImGui.SetColumnWidth(column_index, width) end

---@param column_index? integer
---@return number offset
---@nodiscard
function ImGui.GetColumnOffset(column_index) end

---@param column_index integer
---@param offset number
function ImGui.SetColumnOffset(column_index, offset) end

---@return integer count
---@nodiscard
function ImGui.GetColumnsCount() end

--------------------------------------------------------------
--- Tab Bars, Tabs
--------------------------------------------------------------

---@param str_id string
---@param flags ImGuiTabBarFlags|integer
---@return boolean open
function ImGui.BeginTabBar(str_id, flags) end

function ImGui.EndTabBar() end

---@overload fun(label: string, open: boolean, flags?: ImGuiTabItemFlags|integer): open: boolean, selected: boolean
---@param label string
---@return boolean selected
function ImGui.BeginTabItem(label) end

function ImGui.EndTabItem() end

---@param tab_or_docked_window_label string
function ImGui.SetTabItemClosed(tab_or_docked_window_label) end

--------------------------------------------------------------
--- Logging
--------------------------------------------------------------

---@param auto_open_depth? integer
function ImGui.LogToTTY(auto_open_depth) end

---@param auto_open_depth? integer
---@param fileName? string
function ImGui.LogToFile(auto_open_depth, fileName) end

---@param auto_open_depth? integer
function ImGui.LogToClipboard(auto_open_depth) end

function ImGui.LogFinish() end

function ImGui.LogButtons() end

---@param fmt string
function ImGui.LogText(fmt) end

--------------------------------------------------------------
--- Clipping
--------------------------------------------------------------

---@param min_x number
---@param min_y number
---@param max_x number
---@param max_y number
---@param intersect_current boolean
function ImGui.PushClipRect(min_x, min_y, max_x, max_y, intersect_current) end

function ImGui.PopClipRect() end

--------------------------------------------------------------
--- Focus, Activation
--------------------------------------------------------------

function ImGui.SetItemDefaultFocus() end

---@param offset? integer
function ImGui.SetKeyboardFocusHere(offset) end

--------------------------------------------------------------
--- Item / Widgets Utilities
--------------------------------------------------------------

---@param flags? ImGuiHoveredFlags|integer
---@return boolean hovered
---@nodiscard
function ImGui.IsItemHovered(flags) end

---@return boolean active
---@nodiscard
function ImGui.IsItemActive() end

---@return boolean focused
---@nodiscard
function ImGui.IsItemFocused() end

---@param mouse_button? ImGuiMouseButton
---@return boolean clicked
---@nodiscard
function ImGui.IsItemClicked(mouse_button) end

---@return boolean visible
---@nodiscard
function ImGui.IsItemVisible() end

---@return boolean edited
---@nodiscard
function ImGui.IsItemEdited() end

---@return boolean activated
---@nodiscard
function ImGui.IsItemActivated() end

---@return boolean deactivated
---@nodiscard
function ImGui.IsItemDeactivated() end

---@return boolean deactivated_after_edit
---@nodiscard
function ImGui.IsItemDeactivatedAfterEdit() end

---@return boolean toggled_open
---@nodiscard
function ImGui.IsItemToggledOpen() end

---@return boolean any_item_hovered
---@nodiscard
function ImGui.IsAnyItemHovered() end

---@return boolean any_item_active
---@nodiscard
function ImGui.IsAnyItemActive() end

---@return boolean any_item_focused
---@nodiscard
function ImGui.IsAnyItemFocused() end

---@return number x, number y
---@nodiscard
function ImGui.GetItemRectMin() end

---@return number x, number y
---@nodiscard
function ImGui.GetItemRectMax() end

---@return number x, number y
---@nodiscard
function ImGui.GetItemRectSize() end

function ImGui.SetItemAllowOverlap() end

--------------------------------------------------------------
--- Miscellaneous Utilities
--------------------------------------------------------------

---@overload fun(min_x: number, min_y: number, max_x: number, max_y: number): visible: boolean
---@param size_x number
---@param size_y number
---@return boolean visible
---@nodiscard
function ImGui.IsRectVisible(size_x, size_y) end

---@return number time
---@nodiscard
function ImGui.GetTime() end

---@return integer frame_count
---@nodiscard
function ImGui.GetFrameCount() end

---@param idx ImGuiCol
---@return string style_color_name
---@nodiscard
function ImGui.GetStyleColorName(idx) end

---@param id integer
---@param size_x number
---@param size_y number
---@param flags? ImGuiWindowFlags|integer
---@return boolean open
function ImGui.BeginChildFrame(id, size_x, size_y, flags) end

function ImGui.EndChildFrame() end

--------------------------------------------------------------
--- Text Utilities
--------------------------------------------------------------

---@param text string
---@param text_end? string
---@param hide_text_after_double_hash? boolean
---@param wrap_width? number
---@return number x, number y
---@nodiscard
function ImGui.CalcTextSize(text, text_end, hide_text_after_double_hash, wrap_width) end

--------------------------------------------------------------
--- Color Utilities
--------------------------------------------------------------

---@param r number
---@param g number
---@param b number
---@return number h, number s, number v
---@nodiscard
function ImGui.ColorConvertRGBtoHSV(r, g, b) end

---@param h number
---@param s number
---@param v number
---@return number r, number g, number b
---@nodiscard
function ImGui.ColorConvertHSVtoRGB(h, s, v) end

--------------------------------------------------------------
--- Inputs Utilities: Keyboard
--------------------------------------------------------------

---@param key ImGuiKey
---@return integer index
---@nodiscard
function ImGui.GetKeyIndex(key) end

---@param key_index integer
---@return boolean down
---@nodiscard
function ImGui.IsKeyDown(key_index) end

---@param key_index integer
---@param _repeat? boolean
---@return boolean pressed
---@nodiscard
function ImGui.IsKeyPressed(key_index, _repeat) end

---@param key_index integer
---@return boolean released
---@nodiscard
function ImGui.IsKeyReleased(key_index) end

---@param key_index integer
---@param repeat_delay number
---@param rate number
---@return integer pressed_amount
---@nodiscard
function ImGui.GetKeyPressedAmount(key_index, repeat_delay, rate) end

---@param want_capture_keyboard_value? boolean
function ImGui.CaptureKeyboardFromApp(want_capture_keyboard_value) end

--------------------------------------------------------------
--- Inputs Utilities: Mouse
--------------------------------------------------------------

---@param button ImGuiMouseButton
---@return boolean down
---@nodiscard
function ImGui.IsMouseDown(button) end

---@param button ImGuiMouseButton
---@param _repeat? boolean
---@return boolean clicked
---@nodiscard
function ImGui.IsMouseClicked(button, _repeat) end

---@param button ImGuiMouseButton
---@return boolean released
---@nodiscard
function ImGui.IsMouseReleased(button) end

---@param button ImGuiMouseButton
---@return boolean double_clicked
---@nodiscard
function ImGui.IsMouseDoubleClicked(button) end

---@param min_x number
---@param min_y number
---@param max_x number
---@param max_y number
---@param clip? boolean
---@return boolean hovered
---@nodiscard
function ImGui.IsMouseHoveringRect(min_x, min_y, max_x, max_y, clip) end

---@return boolean any_mouse_down
---@nodiscard
function ImGui.IsAnyMouseDown() end

---@return number x, number y
---@nodiscard
function ImGui.GetMousePos() end

---@return number x, number y
---@nodiscard
function ImGui.GetMousePosOnOpeningCurrentPopup() end

---@param button ImGuiMouseButton
---@param lock_threshold? number
---@return boolean dragging
---@nodiscard
function ImGui.IsMouseDragging(button, lock_threshold) end

---@param button? ImGuiMouseButton
---@param lock_threshold? number
---@return number x, number y
---@nodiscard
function ImGui.GetMouseDragDelta(button, lock_threshold) end

---@param button? ImGuiMouseButton
function ImGui.ResetMouseDragDelta(button) end

---@return ImGuiMouseCursor cursor
---@nodiscard
function ImGui.GetMouseCursor() end

---@param cursor_type ImGuiMouseCursor
function ImGui.SetMouseCursor(cursor_type) end

---@param want_capture_mouse_value? boolean
function ImGui.CaptureMouseFromApp(want_capture_mouse_value) end

--------------------------------------------------------------
--- Clipboard Utilities
--------------------------------------------------------------

---@return string text
---@nodiscard
function ImGui.GetClipboardText() end

---@param text string
function ImGui.SetClipboardText(text) end

---@class ImFont

---@enum ImGuiWindowFlags
ImGuiWindowFlags = {
    AlwaysAutoResize = 64,
    AlwaysHorizontalScrollbar = 32768,
    AlwaysUseWindowPadding = 65536,
    AlwaysVerticalScrollbar = 16384,
    ChildMenu = 268435456,
    ChildWindow = 16777216,
    HorizontalScrollbar = 2048,
    MenuBar = 1024,
    Modal = 134217728,
    NavFlattened = 8388608,
    NoBackground = 128,
    NoBringToFrontOnFocus = 8192,
    NoCollapse = 32,
    NoDecoration = 43,
    NoFocusOnAppearing = 4096,
    NoInputs = 786944,
    NoMouseInputs = 512,
    NoMove = 4,
    NoNav = 786432,
    NoNavFocus = 524288,
    NoNavInputs = 262144,
    NoResize = 2,
    NoSavedSettings = 256,
    NoScrollWithMouse = 16,
    NoScrollbar = 8,
    NoTitleBar = 1,
    None = 0,
    Popup = 67108864,
    Tooltip = 33554432,
    UnsavedDocument = 1048576
}

---@enum ImGuiMouseCursor
ImGuiMouseCursor = {
    Arrow = 0,
    COUNT = 9,
    Hand = 7,
    None = -1,
    NotAllowed = 8,
    ResizeAll = 2,
    ResizeEW = 4,
    ResizeNESW = 5,
    ResizeNS = 3,
    ResizeNWSE = 6,
    TextInput = 1
}

---@enum ImGuiMouseButton
ImGuiMouseButton = {
    ImGuiMouseButton_COUNT = 5,
    ImGuiMouseButton_Left = 0,
    ImGuiMouseButton_Middle = 2,
    ImGuiMouseButton_Right = 1
}

---@enum ImGuiKey
ImGuiKey = {
    A = 546,
    Backspace = 523,
    C = 548,
    COUNT = 645,
    Delete = 522,
    DownArrow = 516,
    End = 520,
    Enter = 525,
    Escape = 526,
    Home = 519,
    Insert = 521,
    KeyPadEnter = 615,
    LeftArrow = 513,
    PageDown = 518,
    PageUp = 517,
    RightArrow = 514,
    Space = 524,
    Tab = 512,
    UpArrow = 515,
    V = 567,
    X = 569,
    Y = 570,
    Z = 571
}

---@enum ImGuiHoveredFlags
ImGuiHoveredFlags = {
    AllowWhenBlockedByActiveItem = 128,
    AllowWhenBlockedByPopup = 32,
    AllowWhenDisabled = 512,
    AllowWhenOverlapped = 256,
    AnyWindow = 4,
    ChildWindows = 1,
    None = 0,
    RectOnly = 416,
    RootAndChildWindows = 3,
    RootWindow = 2
}

---@enum ImGuiFocusedFlags
ImGuiFocusedFlags = {
    AnyWindow = 4,
    ChildWindows = 1,
    None = 0,
    RootAndChildWindows = 3,
    RootWindow = 2
}

---@enum ImGuiCond
ImGuiCond = {
    Always = 1,
    Appearing = 8,
    FirstUseEver = 4,
    None = 0,
    Once = 2
}

---@enum ImGuiCol
ImGuiCol = {
    Border = 5,
    BorderShadow = 6,
    Button = 21,
    ButtonActive = 23,
    ButtonHovered = 22,
    COUNT = 53,
    CheckMark = 18,
    ChildBg = 3,
    DragDropTarget = 48,
    FrameBg = 7,
    FrameBgActive = 9,
    FrameBgHovered = 8,
    Header = 24,
    HeaderActive = 26,
    HeaderHovered = 25,
    MenuBarBg = 13,
    ModalWindowDarkening = 52,
    ModalWindowDimBg = 52,
    NavHighlight = 49,
    NavWindowingDimBg = 51,
    NavWindowingHighlight = 50,
    PlotHistogram = 40,
    PlotHistogramHovered = 41,
    PlotLines = 38,
    PlotLinesHovered = 39,
    PopupBg = 4,
    ResizeGrip = 30,
    ResizeGripActive = 32,
    ResizeGripHovered = 31,
    ScrollbarBg = 14,
    ScrollbarGrab = 15,
    ScrollbarGrabActive = 17,
    ScrollbarGrabHovered = 16,
    Separator = 27,
    SeparatorActive = 29,
    SeparatorHovered = 28,
    SliderGrab = 19,
    SliderGrabActive = 20,
    Tab = 33,
    TabActive = 35,
    TabHovered = 34,
    TabUnfocused = 36,
    TabUnfocusedActive = 37,
    Text = 0,
    TextDisabled = 1,
    TextSelectedBg = 47,
    TitleBg = 10,
    TitleBgActive = 11,
    TitleBgCollapsed = 12,
    WindowBg = 2
}

---@enum ImGuiDir
ImGuiDir = {
    COUNT = 4,
    Down = 3,
    Left = 0,
    None = -1,
    Right = 1,
    Up = 2
}

---@enum ImGuiComboFlags
ImGuiComboFlags = {
    HeightLarge = 8,
    HeightLargest = 16,
    HeightMask = 30,
    HeightRegular = 4,
    HeightSmall = 2,
    NoArrowButton = 32,
    NoPreview = 64,
    None = 0,
    PopupAlignLeft = 1
}

---@enum ImGuiInputTextFlags
ImGuiInputTextFlags = {
    AllowTabInput = 1024,
    AlwaysOverwrite = 8192,
    AutoSelectAll = 16,
    CallbackAlways = 256,
    CallbackCharFilter = 512,
    CallbackCompletion = 64,
    CallbackEdit = 524288,
    CallbackHistory = 128,
    CallbackResize = 262144,
    CharsDecimal = 1,
    CharsHexadecimal = 2,
    CharsNoBlank = 8,
    CharsScientific = 131072,
    CharsUppercase = 4,
    CtrlEnterForNewLine = 2048,
    EnterReturnsTrue = 32,
    MergedItem = 268435456,
    Multiline = 67108864,
    NoHorizontalScroll = 4096,
    NoMarkEdited = 134217728,
    NoUndoRedo = 65536,
    None = 0,
    Password = 32768,
    ReadOnly = 16384
}

---@enum ImGuiColorEditFlags
ImGuiColorEditFlags = {
    AlphaBar = 65536,
    AlphaPreview = 131072,
    AlphaPreviewHalf = 262144,
    DataTypeMask_ = 25165824,
    DefaultOptions_ = 177209344,
    DisplayHSV = 2097152,
    DisplayHex = 4194304,
    DisplayMask_ = 7340032,
    DisplayRGB = 1048576,
    Float = 16777216,
    HDR = 524288,
    InputHSV = 268435456,
    InputMask_ = 402653184,
    InputRGB = 134217728,
    NoAlpha = 2,
    NoBorder = 1024,
    NoDragDrop = 512,
    NoInputs = 32,
    NoLabel = 128,
    NoOptions = 8,
    NoPicker = 4,
    NoSidePreview = 256,
    NoSmallPreview = 16,
    NoTooltip = 64,
    None = 0,
    PickerHueBar = 33554432,
    PickerHueWheel = 67108864,
    PickerMask_ = 100663296,
    Uint8 = 8388608
}

---@enum ImGuiTreeNodeFlags
ImGuiTreeNodeFlags = {
    AllowItemOverlap = 4,
    Bullet = 512,
    CollapsingHeader = 26,
    DefaultOpen = 32,
    FramePadding = 1024,
    Framed = 2,
    Leaf = 256,
    NavLeftJumpsBackHere = 8192,
    NoAutoOpenOnLog = 16,
    NoTreePushOnOpen = 8,
    None = 0,
    OpenOnArrow = 128,
    OpenOnDoubleClick = 64,
    Selected = 1,
    SpanAvailWidth = 2048,
    SpanFullWidth = 4096
}

---@enum ImGuiSelectableFlags
ImGuiSelectableFlags = {
    AllowDoubleClick = 4,
    AllowItemOverlap = 16,
    Disabled = 8,
    DontClosePopups = 1,
    None = 0,
    SpanAllColumns = 2
}

---@enum ImGuiPopupFlags
ImGuiPopupFlags = {
    AnyPopup = 384,
    AnyPopupId = 128,
    AnyPopupLevel = 256,
    MouseButtonDefault_ = 1,
    MouseButtonLeft = 0,
    MouseButtonMask_ = 31,
    MouseButtonMiddle = 2,
    MouseButtonRight = 1,
    NoOpenOverExistingPopup = 32,
    NoOpenOverItems = 64,
    None = 0
}

---@enum ImGuiTabBarFlags
ImGuiTabBarFlags = {
    AutoSelectNewTabs = 2,
    FittingPolicyDefault_ = 64,
    FittingPolicyMask_ = 192,
    FittingPolicyResizeDown = 64,
    FittingPolicyScroll = 128,
    NoCloseWithMiddleMouseButton = 8,
    NoTabListScrollingButtons = 16,
    NoTooltip = 32,
    None = 0,
    Reorderable = 1,
    TabListPopupButton = 4
}

---@enum ImGuiTableColumnFlags
ImGuiTableColumnFlags = {
    DefaultSort = 4,
    Disabled = 1,
    IndentDisabled = 131072,
    IndentEnable = 65536,
    IndentMask_ = 196608,
    IsEnabled = 16777216,
    IsHovered = 134217728,
    IsSorted = 67108864,
    IsVisible = 33554432,
    NoClip = 256,
    NoDirectResize_ = 1073741824,
    NoHeaderLabel = 4096,
    NoHeaderWidth = 8192,
    NoHide = 128,
    NoReorder = 64,
    NoResize = 32,
    NoSort = 512,
    NoSortAscending = 1024,
    NoSortDescending = 2048,
    None = 0,
    PreferSortAscending = 16384,
    PreferSortDescending = 32768,
    StatusMask_ = 251658240,
    WidthFixed = 16,
    WidthMask_ = 24,
    WidthStretch = 8
}

---@enum ImGuiTableFlags
ImGuiTableFlags = {
    Borders = 1920,
    BordersH = 384,
    BordersInner = 640,
    BordersInnerH = 128,
    BordersInnerV = 512,
    BordersOuter = 1280,
    BordersOuterH = 256,
    BordersOuterV = 1024,
    BordersV = 1536,
    ContextMenuInBody = 32,
    Hideable = 4,
    NoBordersInBody = 2048,
    NoBordersInBodyUntilResize = 4096,
    NoClip = 1048576,
    NoHostExtendX = 65536,
    NoHostExtendY = 131072,
    NoKeepColumnsVisible = 262144,
    NoPadInnerX = 8388608,
    NoPadOuterX = 4194304,
    NoSavedSettings = 16,
    None = 0,
    PadOuterX = 2097152,
    PreciseWidths = 524288,
    Reorderable = 2,
    Resizable = 1,
    RowBg = 64,
    ScrollX = 16777216,
    ScrollY = 33554432,
    SizingFixedFit = 8192,
    SizingFixedSame = 16384,
    SizingMask_ = 57344,
    SizingStretchProp = 24576,
    SizingStretchSame = 32768,
    SortMulti = 67108864,
    SortTristate = 134217728,
    Sortable = 8
}

---@enum ImGuiStyleVar
ImGuiStyleVar = {
    Alpha = 0,
    ButtonTextAlign = 23,
    COUNT = 25,
    CellPadding = 17,
    ChildBorderSize = 8,
    ChildRounding = 7,
    DisabledAlpha = 1,
    FrameBorderSize = 13,
    FramePadding = 11,
    FrameRounding = 12,
    GrabMinSize = 20,
    GrabRounding = 21,
    IndentSpacing = 16,
    ItemInnerSpace = 15,
    ItemSpacing = 14,
    PopupBorderSize = 10,
    PopupRounding = 9,
    ScrollbarRounding = 19,
    ScrollbarSize = 18,
    SelectableTextAlign = 24,
    TabRounding = 22,
    WindowBorderSize = 4,
    WindowMinSize = 5,
    WindowPadding = 2,
    WindowRounding = 3,
    WindowTitleAlign = 6
}

---@enum ImGuiTabItemFlags
ImGuiTabItemFlags = {
    NoCloseWithMiddleMouseButton = 4,
    NoPushId = 8,
    NoTooltip = 16,
    None = 0,
    SetSelected = 2,
    UnsavedDocument = 1
}
