
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
(assert (is-Nil Nil) )
(assert (or (is-Nil l1) (= l0 Nil)) )
(assert (and (is-Cons Nil) (= l3 Nil) (is-Cons Nil) (= l2 l1)) )
(assert (is-Cons Nil) )
(assert (not (= l0 l0)) )
(assert (or (is-Cons l0) (is-Cons l3) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (= l1 Nil) (= l0 l0)) )
(assert (= l2 Nil) )
(check-sat)
