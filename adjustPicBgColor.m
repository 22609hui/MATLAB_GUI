function B = adjustPicBgColor(A, color1, color2, sigma)
    color1 = reshape(color1, [1 1 3]);
    color2 = reshape(color2, [1 1 3]);
    color_diff = color2 - color1;
    A = im2double(A);
    t = exp(-0.5 * sum(bsxfun(@minus, A, color1) .^ 2, 3) / (sigma ^ 2));
    B = A + bsxfun(@times, color_diff, repmat(t, [1 1 3]));
end