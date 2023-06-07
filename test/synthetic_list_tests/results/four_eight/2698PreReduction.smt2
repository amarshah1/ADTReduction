
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
(assert (not (= l0 l1)) )
(assert (and (is-Nil l0) (is-Nil Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (or (= l3 l1) (= l1 Nil) (= l0 Nil) (= l0 l1)) )
(assert (is-Cons l3) )
(assert (not (= l0 l2)) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(check-sat)