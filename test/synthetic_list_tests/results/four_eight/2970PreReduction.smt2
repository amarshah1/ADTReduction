
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
(assert (and (is-Cons l1) (is-Cons Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (is-Nil Nil)) )
(assert (and (= l2 Nil) (is-Cons l3) (= l2 l1)) )
(assert (or (= l0 Nil) (= l0 Nil) (= l0 l0)) )
(assert (is-Cons l1) )
(assert (not (= l3 Nil)) )
(assert (and (is-Nil l1) (= l2 Nil)) )
(check-sat)
