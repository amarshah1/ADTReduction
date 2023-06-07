
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 l2) (= l3 Nil) (= l0 Nil)) )
(assert (= l2 Nil) )
(assert (is-Cons l3) )
(assert (not (= l0 Nil)) )
(assert (or (= l0 Nil) (is-Cons l1) (= l2 l0) (is-Cons l1)) )
(check-sat)
