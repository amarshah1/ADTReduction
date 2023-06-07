
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
(assert (not (= l1 Nil)) )
(assert (= l3 l1) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (is-Nil l0) (= l1 Nil) (is-Cons l2)) )
(assert (or (= l1 Nil) (= l2 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l1 l3) (= l1 Nil) (= l3 l1)) )
(assert (and (is-Cons Nil) (= l1 Nil)) )
(check-sat)
