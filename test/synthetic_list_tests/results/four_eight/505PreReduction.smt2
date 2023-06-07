
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
(assert (and (= l0 Nil) (= l3 l3) (= l2 l2)) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (is-Cons Nil)) )
(assert (or (is-Cons Nil) (is-Cons l3) (is-Cons Nil)) )
(assert (or (= l2 l0) (= l2 Nil) (= l0 Nil) (= l1 Nil)) )
(assert (is-Nil l0) )
(assert (not (= l2 Nil)) )
(assert (= l1 l3) )
(check-sat)
